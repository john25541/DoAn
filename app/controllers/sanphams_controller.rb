# frozen_string_literal: true

class SanphamsController < ApplicationController
  before_action :set_product, only: %i[show]
  # GET /products
  # GET /products.json
  def index
    products = Sanpham.all
    # Gender condition
    gender = params[:sex] == 'Thời Trang Nam' ? 0 : 1
    # Get datetime
    time = Time.now
    zone = time.strftime('%Y/%m/%d %H:%M')
    # Show product by conditions
    if params[:pro] == 'Sale'
      @array_product_follow_category = []
      products.each do |sp|
        pro_cate = Sanpham.where.not(masanpham: sp.masanpham, giakhuyenmai: [nil, 0])
        @array_product_follow_category << pro_cate
      end
      @bread = 'Sale'
    elsif params[:sex].nil?
      @array_product_follow_category = []
      products.each do |sp|
        pro_cate = Sanpham.where(masanpham: sp.masanpham)
        @array_product_follow_category << pro_cate
      end
      @bread = 'Sản phẩm'
    elsif params[:id].nil?
      @array_product_follow_category = []
      category = Danhmuc.includes(loaisanphams: :sanphams).where(tendanhmuc: params[:sex])
      category.each do |cate|
        pro_cate = cate.sanphams
        @array_product_follow_category << pro_cate
      end
      @bread = params[:sex]
      
    else
      @array_product_follow_category = []
      products.each do |sp|
        pro_cate = Sanpham.where(masanpham: sp.masanpham, loaisanpham_id: params[:id])
        @array_product_follow_category << pro_cate
      end
      @bread = params[:name]
      @gen = params[:sex]
    end

    @array_product_follow_category.delete_if(&:blank?)

    # Pagination

    # products by same names
  end

  def show
    @product = Sanpham.includes(:chitietsps).find(params[:id])
    @product_detail = Chitietsp.find_by(sanpham_id: @product.masanpham, mausp: params[:color])
    @product_details_all = Chitietsp.where(sanpham_id: @product.masanpham, mausp: params[:color])
    product_same_name = Chitietsp.where(sanpham_id: @product.masanpham)

    @image_product_same = Hash.new
    product_same_name.each do |product_detail|
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
