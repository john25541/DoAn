module ApplicationHelper
  def current_order
    if !session[:madondathang].nil?
      Dondathang.find(session[:madondathang])
    else
      Dondathang.new
    end
  end
end
