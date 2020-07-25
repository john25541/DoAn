ActiveAdmin.register Chitietsp do
  belongs_to :sanpham
  permit_params :machitietsp, :sanpham_id, :mausp, :size, :hinhanhsp, :soluongton

  show title: "Chi tiết sản phẩm" do
    panel "Thông tin chi tiết" do
      attributes_table_for chitietsp do
        row "Mã chi tiết: ", &:machitietsp
        row "Mã sản phẩm: ", &:sanpham_id
        row "màu: ", &:mausp
        row "Size: ", &:size
        row "số lượng tồn: ", &:soluongton
        row "Hình ảnh: " do |chitiet|
          image_tag chitiet.hinhanhsp
        end
      end
    end
  end
end
