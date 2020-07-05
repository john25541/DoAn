class KhachhangsController < ApplicationController
  def update_info
    current_khachhang.assign_attributes user_params
    flash[:info] =
      if current_khachhang.save
        flash[:success] = "Thông tin tài khoản của bạn đã được cập nhật."
      end
    redirect_to khachhangs_profile_path
  end
  private
  def user_params
    params.require(:khachhang).permit(
      :anhdaidien,
      :hotenkhachhang,
      :gioitinh,
      :diachi,
      :sodienthoai,
      :ngaysinh
    )
  end
end
