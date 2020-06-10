class TrangchuController < ApplicationController
  def index
    @products = Sanpham.all
    # Add news into Home Page
    time = Time.now
    zone = time.strftime("%Y/%m/%d %H:%M")
    @news = Tintuc.where("ngaybatdau <= :zone and ngayketthuc >= :zone", zone: zone)
  end
end
