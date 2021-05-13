class SessionsController < ApplicationController
  def new; end

  def create
    session_params = params[:session]
    user = User.find_by(email: session_params[:email].downcase)
    if user&.authenticate(session_params[:password])
      reset_session
      log_in user
      session_params[:remember_me] == '1' ? remember(user) : forget(user)
      redirect_to user
    else
      flash[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end
