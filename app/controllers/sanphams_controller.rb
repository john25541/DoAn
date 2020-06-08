class SanphamsController < ApplicationController
  before_action :set_product, only: %i[show]
  # GET /products
  # GET /products.json
  def index
    products = Sanpham.all
    # Gender condition
    gender = params[:sex] == 'Nam' ? 0 : 1
    # Get datetime
    time = Time.now
    zone = time.strftime('%Y/%m/%d %H:%M')
    # Show product by conditions
    if params[:pro] == 'New'
      products.each do |sp|
        @pro_img = Sanpham.includes(:chitietsps).where(':zone::date - created_at::date <= 30', zone: zone, masanpham: sp.masanpham)
      end
      @bread = 'New'
    elsif params[:pro] == 'Sale'
      products.each do |sp|
        @pro_img = Sanpham.includes(:chitietsps).where.not(masanpham: sp.masanpham, giakhuyenmai: [nil, 0])
      end
      @bread = 'Sale'
    elsif params[:category_id].nil?
      products.each do |sp|
        @pro_img = Sanpham.includes(:chitietsps).where(masanpham: sp.masanpham, gioitinh: gender)
      end
      @bread = params[:sex]
    else
      products.each do |sp|
        @pro_img = Sanpham.includes(:chitietsps).where(masanpham: sp.masanpham, category_id: params[:category_id], gender: gender)
      end
      @bread = params[:name]
      @gen = params[:sex]
    end

    # Pagination

    # products by same names
  end

  def show
    @product = Sanpham.includes(:chitietsps).find(params[:id])
    @product_detail = Chitietsp.find_by(sanpham_id: @product.masanpham, mausp: params[:mau])
    @product_details_all = Chitietsp.where(sanpham_id: @product.masanpham, mausp: params[:mau])
    @product_same_name = Chitietsp.where(sanpham_id: @product.masanpham)

    @image_product_same = {}
    @product_same_name.each do |product_detail|
      @image_product_same[product_detail.mausp] = product_detail.hinhanhsp
    end
    # binding.pry
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_product
    @product = Sanpham.find(params[:id])
  end
end
