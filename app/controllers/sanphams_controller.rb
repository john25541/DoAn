class SanphamsController < ApplicationController
  before_action :set_product, only: %i[show]
  before_action :initialize_session
  before_action :authenticate_khachhang!, only: :add_to_cart

  require "will_paginate/array"
  # GET /products
  # GET /products.json
  def index
    @products = Sanpham.all
    # Show product by conditions
    if params[:pro] == "Sale"
      showProSale
    elsif params[:sex].nil?
      showProducts
    elsif params[:name].nil?
      showProGender
    else
      showProType
    end
    showBrands if params[:brand].present?
    # Sort prices
    unless params[:sortPrice].nil?
      @array_product_follow_category = @array_product_follow_category.order(giaban: params[:sortPrice])
    end
  end

  def showProSale
    @array_product_follow_category = []
    @products.each do |sp|
      pro_cate = Sanpham.where.not(masanpham: sp.masanpham, giakhuyenmai: [nil, 0])
      @array_product_follow_category << pro_cate
    end
    @array_product_follow_category.delete_if(&:blank?)
    @array_product_follow_category = @array_product_follow_category.paginate(page: params[:page], per_page: 20)
    @bread = params[:pro]
  end

  def showProducts
    @array_product_follow_category = []
    @products.each do |sp|
      pro_cate = Sanpham.where(masanpham: sp.masanpham)
      @array_product_follow_category << pro_cate
    end
    @array_product_follow_category.delete_if(&:blank?)
    @array_product_follow_category = @array_product_follow_category.paginate(page: params[:page], per_page: 20)
    @bread = "Sản phẩm"
  end

  def showProGender
    @array_product_follow_category = []
    category = Danhmuc.includes(loaisanphams: :sanphams).where(tendanhmuc: params[:sex])
    category.each do |cate|
      pro_cate = cate.sanphams
      @array_product_follow_category << pro_cate
    end
    @array_product_follow_category.delete_if(&:blank?)
    @array_product_follow_category = @array_product_follow_category.paginate(page: params[:page], per_page: 20)
    @bread = params[:sex]
  end

  def showProType
    @array_product_follow_category = []
    @products.each do |sp|
      pro_cate = Sanpham.where(masanpham: sp.masanpham, loaisanpham_id: params[:id])
      @array_product_follow_category << pro_cate
    end
    @array_product_follow_category.delete_if(&:blank?)
    @array_product_follow_category = @array_product_follow_category.paginate(page: params[:page], per_page: 20)
    @bread = params[:name]
    @gen = params[:sex]
  end

  def showBrands
    @array_product_follow_category = []
    brand = Thuonghieu.includes(:sanphams).where(tenthuonghieu: params[:brand])
    brand.each do |br|
      pro_cate = br.sanphams
      @array_product_follow_category << pro_cate
    end
    @array_product_follow_category.delete_if(&:blank?)
    @array_product_follow_category = @array_product_follow_category.paginate(page: params[:page], per_page: 20)
    @bread = params[:brand]
  end

  def show
    @product = Sanpham.includes(:chitietsps).find(params[:id])
    @product_category_sames = Sanpham.includes(:chitietsps).where(loaisanpham_id: @product.loaisanpham_id).limit(6)
    @product_detail = Chitietsp.find_by(sanpham_id: @product.masanpham, mausp: params[:color])
    @product_details_all = Chitietsp.where(sanpham_id: @product.masanpham, mausp: params[:color])
    product_same_name = Chitietsp.where(sanpham_id: @product.masanpham)

    @image_product_same = {}
    product_same_name.each do |product_detail|
      @image_product_same[product_detail.mausp] = product_detail.hinhanhsp
    end
    
    #new line item
    @order_item = current_order.chitietdathangs.new
    @order_item.valid?
  end
  
  private
  def initialize_session
    session[:cart] ||= [] 
   end

  def set_product
    @product = Sanpham.find(params[:id])
  end
end
