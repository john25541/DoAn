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
  end

  # GET /dondathangs/1/edit
  def edit
  end

  # POST /dondathangs
  # POST /dondathangs.json
  def create
    
    @dondathang = Dondathang.new(dondathang_params)

    respond_to do |format|
      if @dondathang.save
        format.html { redirect_to @dondathang, notice: 'Dondathang was successfully created.' }
        format.json { render :show, status: :created, location: @dondathang }
      else
        format.html { render :new }
        format.json { render json: @dondathang.errors, status: :unprocessable_entity }
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
