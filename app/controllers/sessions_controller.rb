class SessionsController < ApplicationController
  def new; end

  def create
    session_params = params[:session]
    user = User.find_by(email: session_params[:email].downcase)
    if user&.authenticate(session_params[:password])
      if user.activated?
        forwarding_url = session[:forwarding_url]
        reset_session
        log_in(user)
        session_params[:remember_me] == '1' ? remember(user) : forget(user)
        redirect_to(forwarding_url || user)  
      else
        redirect_to(root_url)
      end
    else
      render('new')
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to(root_url)
  end
end
