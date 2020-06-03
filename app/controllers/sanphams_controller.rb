class SanphamsController < ApplicationController
  before_action :set_product, only: %i[show]
  # GET /products
  # GET /products.json
  def index
    sanpham = Sanpham.all
    # Gender condition
    gender = params[:sex] == "Nam" ? 0 : 1
    # Get datetime
    time = Time.now
    zone = time.strftime("%Y/%m/%d %H:%M")
    # Show product by conditions
    if params[:pro] == "New"
      sanpham.each do |sp|
        @hinhanhsp = Sanpham.includes(:chitietsps).where(":zone::date - created_at::date <= 30", zone: zone, masanpham: sp.masanpham)
      end
      @bread = "New"
    elsif params[:pro] == "Sale"
      sanpham.each do |sp|
        @hinhanhsp = Sanpham.includes(:chitietsps).where.not(masanpham: sp.masanpham, giakhuyenmai: [nil, 0])
      end
      @bread = "Sale"
    elsif params[:category_id].nil?
      sanpham.each do |sp|
        @hinhanhsp = Sanpham.includes(:chitietsps).where(masanpham: sp.masanpham, gioitinh: gender)
      end
      @bread = params[:sex]
    else
      sanpham.each do |sp|
        @hinhanhsp = Sanpham.includes(:chitietsps).where(masanpham: sp.masanpham, category_id: params[:category_id], gender: gender)
      end
      @bread = params[:name]
      @gen = params[:sex]
    end

    # Pagination
 
    # products by same names
    
  end

  # GET /products/1
  # GET /products/1.json
  def show
  end

  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html {
          redirect_to @product,
                      notice: "Product was successfully updated."
        }
        format.json { render :show, status: :ok, location: @product }
        @products = Product.all
        ActionCable.server.broadcast "products",
                                     html: render_to_string("home/index", layout: false)
      else
        format.html { render :edit }
        format.json {
          render json: @product.errors,
                 status: :unprocessable_entity
        }
      end
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_product
    @product = Product.find(params[:id])
  end
end