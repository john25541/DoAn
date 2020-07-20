class ChitietdathangsController < ApplicationController

  def new
    @order_item = Chitietdathang.new
  end

  def create

    @product_detail = Chitietsp.joins(:sanpham).find_by(sanpham_id: params[:product_detail]["sanpham_id"], mausp: params[:product_detail]["mausp"] ,size: params[:product_size])
    params[:product_detail].merge!(chitietsp_id: @product_detail.machitietsp)
    params[:product_detail] = params[:product_detail].except(:sanpham_id, :mausp)

    @order = current_order
    # binding.pry
    @order_item = @order.chitietdathangs.new(order_params)
    
    respond_to do |format|
      if @order_item.save
        format.html { redirect_to carts_path }
        format.js
        session[:cart] <<  @order_item.id
      else
        format.html { render :new }
        format.json { render json: @order_item.errors, status: :unprocessable_entity }
      end
    end
  end

  def update

  end

  def destroy
    @chitietdathang = Chitietdathang.find(params[:id])
    session[:cart].delete(@chitietdathang.id)
    @chitietdathang.destroy

    respond_to do |format|
      format.html { redirect_to carts_path }
      format.json { head :no_content }
    end 
    
  end

  private

  def order_params
    params.fetch(:product_detail, {}).permit(:chitietsp_id, :soluong)
  end
end
