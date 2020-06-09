class SanphamsController < ApplicationController
  before_action :set_sanpham, only: [:show, :edit, :update, :destroy]

  def index
    @products = Sanpham.all
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
    def set_sanpham
      @sanpham = Sanpham.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sanpham_params
      params.fetch(:sanpham, {})
    end
end
