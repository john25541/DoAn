module ApplicationHelper
  def current_order
    Dondathang.new
  end
  def avatar_url(user)
    if user.anhdaidien?
      user.anhdaidien  
    else
      gravatar_id = Digest::MD5::hexdigest(user.email).downcase
      "https://www.gravatar.com/avatar/#{gravatar_id}.jpg?d=identical&s=150"
    end
  end
end
