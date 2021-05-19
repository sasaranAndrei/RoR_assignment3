class AccountActivationsController < ApplicationController
  def edit
    user = User.find_by(email: params[:email])
    if user&.unactivated? && user.authenticated?(:activation, params[:id])
      user.activate
      log_in user
      redirect_to(user)
    else
      redirect_to(root_url)
    end
  end
end
