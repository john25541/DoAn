class DondathangsController < ApplicationController
  before_action :set_dondathang, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_khachhang!, only: [:new]

  def index
    if khachhang_signed_in?
      @orders = current_khachhang.dondathangs
    end
  end

  def show
    @order = Dondathang.find(params[:id])
    @order_items = Chitietdathang.joins(:chitietsp).where(dondathang_id: @order.madondathang)
  end

  #update attribute tinhtrang = "cancel"
  def cancel_order
    @order = Dondathang.find(params[:madondathang])
    @order.update_column(:tinhtrang, 0)
    redirect_to dondathangs_path
  end

  def new 
    @dondathang = Dondathang.new
    @order_items = Chitietdathang.joins(:chitietsp).find(session[:cart])
  end

  def create
    cart = session[:cart]
    binding.pry
    @dondathang = current_khachhang.dondathangs.create(dondathang_params)
    respond_to do |format|
      if @dondathang.save
        @order_items = Chitietdathang.joins(:chitietsp).find(session[:cart])
        @order_items.each  do |item| 
          item.dondathang_id = @dondathang.id
          item.save
        end
        session[:cart].clear
        OrderMailer.received(@dondathang).deliver_later
        format.html { render "dondathangs/success" }
        format.json { render :show, status: :created, location: @dondathang }
      end
    end
  end

  def update
    respond_to do |format|
      if @dondathang.update(dondathang_params)
        format.html { redirect_to @dondathang}
        format.json { render :show, status: :ok, location: @dondathang }
      else
        format.html { render :edit }
        format.json { render json: @dondathang.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dondathang
      @dondathang = Dondathang.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dondathang_params
      params.require(:dondathang).permit(:diachigiaohang)
    end
end
