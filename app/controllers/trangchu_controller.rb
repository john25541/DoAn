class TrangchuController < ApplicationController
  def index
    @product = Sanpham.all
  end
end
