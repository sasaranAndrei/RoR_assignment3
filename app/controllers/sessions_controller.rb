class SessionsController < ApplicationController
  def new; end

  def create
    session_params = params[:session]
    user = User.find_by(email: session_params[:email].downcase)
    
    if user&.authenticate(session_params[:password])
      authenticate(user)
    else
      flash[:danger] = 'Invalid email / password combination'
      render('new')
    end
  end

  def destroy
    log_out if logged_in?
    
    redirect_to(root_url)
  end

  private

  def authenticate(user)
    if user.activated?
      forward(user)
    else
      flash[:warning] = 'Account not activated. Please check your email for the activation link'
      
      redirect_to(root_url)
    end
  end

  def forward(user)  
    forwarding_url = session[:forwarding_url]
    reset_session
    log_in(user)
    params[:session][:remember_me] == '1' ? remember(user) : forget(user)
    
    redirect_to(forwarding_url || user)  
  end
end
