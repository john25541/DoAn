class TrangchuController < ApplicationController
  def index
    @products = Sanpham.all
    
    # binding.pry
  end
end
