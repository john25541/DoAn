class TrangchuController < ApplicationController
  def index
    products = Sanpham.all
    @arr_pro = []
    products.each do |product|
      pro_all = Sanpham.includes(:chitietsps).where(masanpham: product.masanpham)
      @arr_pro << pro_all
      product_same_name = Chitietsp.where(sanpham_id: product.masanpham)

      @image_product_same = {}
      product_same_name.each do |product_detail|
        @image_product_same[product_detail.mausp] = product_detail.hinhanhsp
      end
    end
    binding.pry
  end
end
