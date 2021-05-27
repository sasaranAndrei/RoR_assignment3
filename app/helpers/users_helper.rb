module UsersHelper
  def gravatar_for(user)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{ gravatar_id }"
    image_tag(gravatar_url, alt: user.name, class: 'gravatar')
  end

  def is_admin
    current_user.admin?
  end

  def load_cart
    if logged_in?
      @cart = Product.find(current_user.cart)
    else
      redirect_to(login_path)
    end
  end
end
