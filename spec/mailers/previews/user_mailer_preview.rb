class UserMailerPreview < ActionMailer::Preview
  def account_activation
    user = User.new(name: 'Name', email: 'email@domain.com', password: 'password', password_confirmation: 'password')
    user.activation_token = User.new_token
    UserMailer.account_activation(user)
  end

  def password_reset
    user = User.new(name: 'Name', email: 'email@domain.com', password: 'password', password_confirmation: 'password')
    user.reset_token = User.new_token
    UserMailer.password_reset(user)
  end
end
