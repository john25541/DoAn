class SanphamsController < ApplicationController
  before_action :set_product, only: %i[show]
  before_action :initialize_session
  before_action :load_cart
  before_action :authenticate_khachhang! , only: :add_to_cart
  # GET /products
  # GET /products.json
  def index
    @products = Sanpham.all
    # Show product by conditions
    if params[:pro] == 'Sale'
      showProSale 
    elsif params[:sex].nil?
      showProducts 
    elsif params[:name].nil?
      showProGender
    else
      showProType
    end
    @array_product_follow_category.delete_if(&:blank?)
    # Pagination
  end

  def showProSale
    @array_product_follow_category = []
    @products.each do |sp|
      pro_cate = Sanpham.where.not(masanpham: sp.masanpham, giakhuyenmai: [nil, 0])
      @array_product_follow_category << pro_cate
    end
    @bread = params[:pro]
  end

  def showProducts
    @array_product_follow_category = []
    @products.each do |sp|
      pro_cate = Sanpham.where(masanpham: sp.masanpham)
      @array_product_follow_category << pro_cate
    end
    @bread = 'Sản phẩm'
  end

  def showProGender
    @array_product_follow_category = []
    category = Danhmuc.includes(loaisanphams: :sanphams).where(tendanhmuc: params[:sex])
    category.each do |cate|
      pro_cate = cate.sanphams
      @array_product_follow_category << pro_cate
    end
    @bread = params[:sex]
  end

  def showProType
    @array_product_follow_category = []
    @products.each do |sp|
      pro_cate = Sanpham.where(masanpham: sp.masanpham, loaisanpham_id: params[:id])
      @array_product_follow_category << pro_cate
    end
    @bread = params[:name]
    @gen = params[:sex]
  end

  def show
    @product = Sanpham.includes(:chitietsps).find(params[:id])
    @product_detail = Chitietsp.find_by(sanpham_id: @product.masanpham, mausp: params[:color])
    @product_details_all = Chitietsp.where(sanpham_id: @product.masanpham, mausp: params[:color])
    product_same_name = Chitietsp.where(sanpham_id: @product.masanpham)

    @image_product_same = {}
    product_same_name.each do |product_detail|
      @image_product_same[product_detail.mausp] = product_detail.hinhanhsp
    end
    # binding.pry
  end

  def cart

  end

  def add_to_cart

  code_product_detail = params[:machitietsp]
  session[:cart] << code_product_detail unless session[:cart].include?(code_product_detail)

  redirect_to cart_path

  end
  
  def remove_from_cart
    code_product_detail = params[:machitietsp]
    session[:cart].delete(code_product_detail)
    redirect_to cart_path
  end

  private
  def initialize_session
   session[:cart] ||= [] 
  end

  def load_cart
    @cart = Chitietsp.includes(:sanpham).find(session[:cart])
  end

  def set_product
    @product = Sanpham.find(params[:id])
  end
end
