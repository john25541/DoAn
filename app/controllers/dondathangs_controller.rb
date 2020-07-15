class DondathangsController < ApplicationController
  before_action :set_dondathang, only: [:show, :edit, :update, :destroy]

  # GET /dondathangs
  # GET /dondathangs.json
  def index
    @dondathangs = Dondathang.all
  end

  def show
  end

  # GET /dondathangs/new
  def new 
    @dondathang = Dondathang.new
    @order_items = Chitietdathang.joins(:chitietsp).find(session[:cart])
  end

  # GET /dondathangs/1/edit
  def edit
  end

  # POST /dondathangs
  # POST /dondathangs.json
  def create
    cart = session[:cart]
    @dondathang = current_khachhang.dondathangs.create(dondathang_params)
    respond_to do |format|
      if @dondathang.save
        @order_items = Chitietdathang.joins(:chitietsp).find(session[:cart])
        @order_items.each  do |item| 
          item.dondathang_id = @dondathang.id
          item.save
        end
        session[:cart].clear
        format.html { render "dondathangs/success" }
        format.json { render :show, status: :created, location: @dondathang }
      end
    end
  end

  # PATCH/PUT /dondathangs/1
  # PATCH/PUT /dondathangs/1.json
  def update
    respond_to do |format|
      if @dondathang.update(dondathang_params)
        format.html { redirect_to @dondathang, notice: 'Dondathang was successfully updated.' }
        format.json { render :show, status: :ok, location: @dondathang }
      else
        format.html { render :edit }
        format.json { render json: @dondathang.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dondathangs/1
  # DELETE /dondathangs/1.json
  def destroy
    @dondathang.destroy
    respond_to do |format|
      format.html { redirect_to dondathangs_url, notice: 'Dondathang was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dondathang
      @dondathang = Dondathang.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dondathang_params
      params.fetch(:dondathang, {})
    end
end
