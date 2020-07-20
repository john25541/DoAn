class TrangchuController < ApplicationController
  def index
    @products = Sanpham.paginate(page: params[:page], per_page: 19)

    # Add news into Home Page
    time = Time.now
    zone = time.strftime("%Y/%m/%d %H:%M")
    @news = Tintuc.where("ngaybatdau <= :zone and ngayketthuc >= :zone", zone: zone)
  end
end
