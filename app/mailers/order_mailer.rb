class OrderMailer < ApplicationMailer
  default from: "Đồ Án <johndevelopment25541@gmail.com>"

  def received(dondathang)
    @dondathang = dondathang
    
    @chitietdathangs = Chitietdathang.joins(:chitietsp).where(dondathang_id: @dondathang.madondathang)

    @user = Khachhang.find_by(id:@dondathang.khachhang_id )
    # binding.pry
    mail to: @user.email, subject: "Đặt hàng thành công"

  end
end
