class TrangchuController < ApplicationController
  def index
    @sanpham = Sanpham.all
    @sanpham.each do |sanpham|
      @hinhanhsp = Sanpham.includes(:chitietsps).where(masanpham: sanpham.masanpham).first
    end
  end
end
