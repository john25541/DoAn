class CartsController < ApplicationController
  
  def show
    if session[:cart].nil?
      @order_items = []
    else
      @order_items = Chitietdathang.joins(:chitietsp).find(session[:cart])
    end
  end

end
