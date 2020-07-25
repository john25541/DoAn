# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.delete_all
Chitietsp.delete_all
Sanpham.delete_all
Thuonghieu.delete_all
Loaisanpham.delete_all
Danhmuc.delete_all
Khachhang.delete_all
Tintuc.delete_all

AdminUser.create!(email: 'admin@gmail.com', password: '123456', password_confirmation: '123456')

Danhmuc.create!(madanhmuc: 'DM0001', tendanhmuc: 'Thời Trang Nam').loaisanphams.create!([{ maloai: 'LSP0001' , tenloai: 'Áo Thun Nam' }, { maloai: 'LSP0002', tenloai: 'Áo Sơ Mi Nam' }, { maloai: 'LSP0003', tenloai: 'Áo Khoác Nam' }, { maloai: 'LSP0004', tenloai: 'Quần Tây Nam' }, { maloai: 'LSP0005', tenloai: 'Quần Jeans Nam' }, { maloai: 'LSP0006', tenloai: 'Quần Kaki Nam' }, { maloai: 'LSP0007', tenloai: 'Quần Jogger Nam' }, { maloai: 'LSP0008', tenloai: 'Phụ Kiện Nam' }])

Danhmuc.create!(madanhmuc: 'DM0002', tendanhmuc: 'Thời Trang Nữ').loaisanphams.create!([{ maloai: 'LSP0009', tenloai: 'Áo Thun Nữ' }, { maloai: 'LSP0010', tenloai: 'Áo Sơ Mi Nữ' }, { maloai: 'LSP0011', tenloai: 'Áo Khoác Nữ' }, { maloai: 'LSP0012', tenloai: 'Quần Tây Nữ' }, { maloai: 'LSP0013', tenloai: 'Quần Jeans Nữ' }, { maloai: 'LSP0014', tenloai: 'Quần Kaki Nữ' }, { maloai: 'LSP0015', tenloai: 'Quần Jogger Nữ' },{ maloai: 'LSP0016', tenloai: 'Đầm Nữ' },{ maloai: 'LSP0017', tenloai: 'Váy Nữ' }, {maloai: 'LSP0018', tenloai: 'Phụ Kiện Nữ' }])

Thuonghieu.create!([{ mathuonghieu: 'TH0001', tenthuonghieu: 'Chic-Land', hinhanhthuonghieu: 'chic-land.png', diachithuonghieu: '04 Láng Hạ, Q.Ba Đình, Hà Nội', emailthuonghieu: 'chiclandfashion@gmail.com' }, { mathuonghieu: 'TH0002', tenthuonghieu: 'The Blue Exchange', hinhanhthuonghieu: 'theblue.jpg', diachithuonghieu: '359 Lê Văn Sĩ, Phường 13, Quận 3, Tp.HCM', emailthuonghieu: 'theblueschange@gmail.com' }, { mathuonghieu: 'TH0003', tenthuonghieu: 'Owen', hinhanhthuonghieu: 'owen.jpeg', diachithuonghieu: 'Lô III.25, Đường 19/5A, Nhóm CN III, Khu Công Nghiệp Tân Bình,Tây Thạnh, Tân Phú, TP HCM', emailthuonghieu: 'owen@gmail.com' }, { mathuonghieu: 'TH0004', tenthuonghieu: 'Elise', hinhanhthuonghieu: 'elise.jpg', diachithuonghieu: 'Tầng 8 - Số 2 Tôn Thất Tùng, Đống Đa, Hà Nội', emailthuonghieu: 'elise@gmail.com' }, { mathuonghieu: 'TH0005', tenthuonghieu: 'Ivy Moda', hinhanhthuonghieu: 'ivy_moda.jpg', diachithuonghieu: 'Tổ dân phố Tháp, Đại Mỗ, Nam Từ Liêm, Hà Nội', emailthuonghieu: 'ivymoda@gmail.com' }, { mathuonghieu: 'TH0006', tenthuonghieu: 'Nem Fashion', hinhanhthuonghieu: 'nem.jpg', diachithuonghieu: 'Tầng 10, Tòa nhà NEM – 545 Nguyễn Văn Cừ, Long Biên, Hà Nội', emailthuonghieu: 'nemfashion@gmail.com' }, { mathuonghieu: 'TH0007', tenthuonghieu: 'An Phước', hinhanhthuonghieu: 'AnPhuoc.jpg', diachithuonghieu: '100/11-12 An Dương Vương, Phường 9, Quận 5, TP HCM', emailthuonghieu: 'anphuoc@gmail.com' }, { mathuonghieu: 'TH0008', tenthuonghieu: 'Việt Tiến', hinhanhthuonghieu: 'viettien.jpg', diachithuonghieu: '7 Lê Minh Xuân, P.7, Q. Tân Bình, Tp.HCM', emailthuonghieu: 'viettien@gmail.com' }, { mathuonghieu: 'TH0009', tenthuonghieu: 'Yame', hinhanhthuonghieu: 'yame.jpg', diachithuonghieu: '766/3B - 3C, SƯ VẠN HẠNH, P12, Q.10, TP.HCM', emailthuonghieu: 'yame@gmail.com' }, { mathuonghieu: 'TH0010', tenthuonghieu: 'Novelty', hinhanhthuonghieu: 'novelty.jpg', diachithuonghieu: '04 đường Bến Nghé, phường Tân Thuận Đông, Quận 7, Tp. Hồ Chí Minh', emailthuonghieu: 'novelty@gmail.com' }, { mathuonghieu: 'TH0011', tenthuonghieu: 'SEA Collection', hinhanhthuonghieu: 'sea-collection.jpg', diachithuonghieu: '58 Bành Văn Trân, Phường 7, Quận Tân Bình, Tp. HCM', emailthuonghieu: 'seacollection@gmail.com' }, { mathuonghieu: 'TH0012', tenthuonghieu: 'Polo', hinhanhthuonghieu: 'polo.png', diachithuonghieu: '17bis Huỳnh Đình Hai, Phường 14, Quận Bình Thạnh', emailthuonghieu: 'polo@gmail.com' }])

Tintuc.create!([{ matintuc: 'TT0001', tieude: 'Giao hàng miễn phí', ngaybatdau: DateTime.now().strftime("%Y/%m/%d %H:%M"),ngayketthuc: '30/10/2020 8:00' ,mota: 'Giao hàng miễn phí nội thành TP.HCM cho đơn hàng trên 1.000.000đ',hinhanhtintuc: 'freeship.jpeg'}, { matintuc: 'TT0002',tieude: 'Giảm giá 70%', ngaybatdau: DateTime.now().strftime("%Y/%m/%d %H:%M"), ngayketthuc: '30/10/2020 8:00' ,mota: 'Giảm 70% tổng hóa đơn cho khách hàng', hinhanhtintuc: 'sale70.jpeg'}, { matintuc: 'TT0003', tieude: 'Sản phẩm mới', ngaybatdau: DateTime.now().strftime("%Y/%m/%d %H:%M"),ngayketthuc: '30/10/2020 8:00' , mota: 'Sản phẩm áo thun mới do cửa hàng thiết kế  mẫu mã đẹp', hinhanhtintuc: 'newclothes.jpeg'}])

Khachhang.create!([{ email: 'nguyenvanloc1247@gmail.com', password: '123456', password_confirmation: '123456', anhdaidien: '', hotenkhachhang: 'Nguyễn Văn Lộc', gioitinh: 0, diachi: '140 Lê Trọng Tấn', sodienthoai: '09076826437', ngaysinh: '' }, { email: 'levulinh110@gmail.com', password: '123456', password_confirmation: '123456', anhdaidien: '', hotenkhachhang: 'Lê Vũ Linh', gioitinh: 0, diachi: '40/2/11 Lê Sát, Tân Phú, TP.HCM', sodienthoai: '09076826437', ngaysinh: ''}])

Sanpham.create!(
  masanpham: 'SP0001',
  loaisanpham_id: 'LSP0001',
  thuonghieu_id: 'TH0009',
  tensanpham: 'Áo Thun Nam Y2010 Basic L05',
  giaban: 185000,
  giakhuyenmai: 0,
  mota: %(
    <h3> Chất liệu: Cotton 2C </h3>
    <p> Thành phần: 100% Cotton </p>
    <p> - Co dãn 2 chiều</p>
    <p> - Thấm hút mồ hôi tốt mang lại cảm giác thoáng mát </p>
    <p>HDSD:</p>
    <p> - Giặt tay để sản phẩm giữ được độ bền cao</p>
    <p> - Ủi sản phẩm bằng bàn ủi hơi nước hoặc ủi khi sản phẩm còn ẩm để dễ dàng làm phẳng </p>)
).chitietsps.create!([
    {
        machitietsp: '0019087001',
        mausp: 'Trắng',
        size: 'S',
        hinhanhsp: 'aothun2.jpg',
        soluongton: 100,
    },
    {
        machitietsp: '0019087002',
        mausp: 'Trắng',
        size: 'M',
        hinhanhsp: 'aothun2.jpg',
        soluongton: 70,
    },
    {
        machitietsp: '0019087003',
        mausp: 'Trắng',
        size: 'L',
        hinhanhsp: 'aothun2.jpg',
        soluongton: 80,
    },
    {
        machitietsp: '0019087004',
        mausp: 'Trắng',
        size: 'XL',
        hinhanhsp: 'aothun2.jpg',
        soluongton: 20,
    },
    {
        machitietsp: '0019087005',
        mausp: 'Xanh Chuối',
        size: 'S',
        hinhanhsp: 'aothun22.jpg',
        soluongton: 80,
    },
    {
        machitietsp: '0019087006',
        mausp: 'Xanh Chuối',
        size: 'M',
        hinhanhsp: 'aothun22.jpg',
        soluongton: 70,
    },
    {
        machitietsp: '0019087007',
        mausp: 'Xanh Chuối',
        size: 'L',
        hinhanhsp: 'aothun22.jpg',
        soluongton: 80,
    },
    {
        machitietsp: '0019087008',
        mausp: 'Xanh Chuối',
        size: 'XL',
        hinhanhsp: 'aothun22.jpg',
        soluongton: 50,
    }
])

Sanpham.create!(
  masanpham: 'SP0002',
  loaisanpham_id: 'LSP0001',
  thuonghieu_id: 'TH0009',
  tensanpham: 'Áo Thun Nam Y2010 BD-B06',
  giaban: 185000,
  giakhuyenmai: 0,
  mota: %(
    <h3> Chất liệu: Cotton 2C </h3>
    <p> Thành phần: 100% Cotton </p>
    <p> - Co dãn 2 chiều</p>
    <p> - Thấm hút mồ hôi tốt mang lại cảm giác thoáng mát </p>
    <p>HDSD:</p>
    <p> - Giặt tay để sản phẩm giữ được độ bền cao</p>
    <p> - Ủi sản phẩm bằng bàn ủi hơi nước hoặc ủi khi sản phẩm còn ẩm để dễ dàng làm phẳng </p>)
).chitietsps.create!([
    {
        machitietsp: '0019612001',
        mausp: 'Đen',
        size: 'M',
        hinhanhsp: 'aothun1.jpg',
        soluongton: 40,
    },
    {
        machitietsp: '0019612002',
        mausp: 'Đen',
        size: 'L',
        hinhanhsp: 'aothun1.jpg',
        soluongton: 70,
    },
    {
        machitietsp: '0019612003',
        mausp: 'Đen',
        size: 'XL',
        hinhanhsp: 'aothun1.jpg',
        soluongton: 80,
    }
])

Sanpham.create!(
  masanpham: 'SP0003',
  loaisanpham_id: 'LSP0009',
  thuonghieu_id: 'TH0009',
  tensanpham: 'Áo Thun #STRONGVIETNAM MS 57M5700',
  giaban: 450000,
  giakhuyenmai: 0,
  mota: %(
      <h3> Chất liệu: Cotton 2C </h3>
      <p> Thành phần: 100% Cotton </p>
      <p> - Co dãn 2 chiều</p>
      <p> - Thấm hút mồ hôi tốt mang lại cảm giác thoáng mát </p>
      <p>HDSD:</p>
      <p> - Giặt tay để sản phẩm giữ được độ bền cao</p>
      <p> - Ủi sản phẩm bằng bàn ủi hơi nước hoặc ủi khi sản phẩm còn ẩm để dễ dàng làm phẳng </p>)
).chitietsps.create!([
    {
        machitietsp: '0019117001',
        mausp: 'Vàng',
        size: 'S',
        hinhanhsp: 'aothunNu1.jpg',
        soluongton: 100,
    },
    {
        machitietsp: '0019117002',
        mausp: 'Vàng',
        size: 'M',
        hinhanhsp: 'aothunNu1.jpg',
        soluongton: 70,
    },
    {
        machitietsp: '0019117003',
        mausp: 'Vàng',
        size: 'L',
        hinhanhsp: 'aothunNu1.jpg',
        soluongton: 80,
    },
    {
        machitietsp: '0019117004',
        mausp: 'Vàng',
        size: 'XL',
        hinhanhsp: 'aothunNu1.jpg',
        soluongton: 20,
    },
    {
        machitietsp: '0019117005',
        mausp: 'Trắng',
        size: 'S',
        hinhanhsp: 'aothunNu2.jpg',
        soluongton: 80,
    },
    {
        machitietsp: '0019117006',
        mausp: 'Trắng',
        size: 'M',
        hinhanhsp: 'aothunNu2.jpg',
        soluongton: 70,
    },
    {
        machitietsp: '0019117007',
        mausp: 'Trắng',
        size: 'L',
        hinhanhsp: 'aothunNu2.jpg',
        soluongton: 80,
    },
    {
        machitietsp: '0019117008',
        mausp: 'Trắng',
        size: 'XL',
        hinhanhsp: 'aothunNu2.jpg',
        soluongton: 50,
    }
])

Sanpham.create!(
  masanpham: 'SP0004',
  loaisanpham_id: 'LSP0016',
  thuonghieu_id: 'TH0005',
  tensanpham: 'ĐẦM 2 LỚP PHỐI LỤA TAY PHỒNG MS 48M5142',
  giaban: 990000,
  giakhuyenmai: 0,
  mota: %(
  <p> Bạn đang muốn tìm cho mình 1 chiếc đầm xinh xắn, nhẹ nhàng không kém phần sang chảnh thì không nên bỏ qua sản phẩm này của IVY moda!</p>
  <p> Thiết kế cổ vuông khéo léo khoe trọn vùng cổ mảnh mai, khóa ẩn cùng màu ở cổ tay, chi tiết tay phồng nhẹ cực kỳ sang chảnh đang là hot trend 2020.</p>
  <p> Chất liệu lụa kết hợp với vải tuysi cao cấp mềm mại, có khả năng giữ form dáng hoàn hảo...Đây sẽ là sự lựa chọn dành cho những quý cô yêu thích sự nhẹ nhàng, đơn giản bạn có thể diện ở bất kỳ đâu, dù là nơi công sở cho đến những buổi tiệc sang trọng.</p>
  <p>Màu sắc: Hồng san hô - Đen </p>)
).chitietsps.create!([
    {
        machitietsp: '0924161410',
        mausp: 'Hồng',
        size: 'S',
        hinhanhsp: 'aolua1.jpg',
        soluongton: 40,
    },
    {
        machitietsp: '0924161411',
        mausp: 'Hồng',
        size: 'M',
        hinhanhsp: 'aolua1.jpg',
        soluongton: 70,
    },
    {
        machitietsp: '0924161412',
        mausp: 'Hồng',
        size: 'L',
        hinhanhsp: 'aolua1.jpg',
        soluongton: 80,
    },
    {
        machitietsp: '0924161413',
        mausp: 'Hồng',
        size: 'XL',
        hinhanhsp: 'aolua1.jpg',
        soluongton: 80,
    }
])

Sanpham.create!(
  masanpham: 'SP0005',
  loaisanpham_id: 'LSP0008',
  thuonghieu_id: 'TH0009',
  tensanpham: 'PKTT Dây Nịt Y2010 A15',
  giaban: 285000,
  giakhuyenmai: 0,
  mota: ''
).chitietsps.create!([
    {
    machitietsp: '0019582001',
    mausp: 'Đen',
    size: 'Free Size',
    hinhanhsp: 'thatlung.jpg',
    soluongton: 37,
    }
])
