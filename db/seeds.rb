# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.delete_all
Chitietdathang.delete_all
Dondathang.delete_all
Chitietsp.delete_all
Sanpham.delete_all
Thuonghieu.delete_all
Loaisanpham.delete_all
Danhmuc.delete_all
Khachhang.delete_all
Tintuc.delete_all

AdminUser.create!(email: 'admin@gmail.com', password: '123456', password_confirmation: '123456')

Danhmuc.create!(madanhmuc: 'DM0001', tendanhmuc: 'Thời Trang Nam').loaisanphams.create!([{ maloai: 'LSP0001' , tenloai: 'Áo Thun Nam' }, { maloai: 'LSP0002', tenloai: 'Áo Sơ Mi Nam' }, { maloai: 'LSP0003', tenloai: 'Áo Khoác Nam' }, { maloai: 'LSP0004', tenloai: 'Quần Tây Nam' }, { maloai: 'LSP0005', tenloai: 'Quần Jeans Nam' }, { maloai: 'LSP0006', tenloai: 'Quần Kaki Nam' }, { maloai: 'LSP0007', tenloai: 'Quần Jogger Nam' }, { maloai: 'LSP0008', tenloai: 'Phụ Kiện Nam' }])

Danhmuc.create!(madanhmuc: 'DM0002', tendanhmuc: 'Thời Trang Nữ').loaisanphams.create!([{ maloai: 'LSP0009', tenloai: 'Áo Thun Nữ' }, { maloai: 'LSP0010', tenloai: 'Áo Sơ Mi Nữ' }, { maloai: 'LSP0011', tenloai: 'Áo Khoác Nữ' }, { maloai: 'LSP0012', tenloai: 'Quần Tây Nữ' }, { maloai: 'LSP0013', tenloai: 'Quần Jeans Nữ' }, { maloai: 'LSP0014', tenloai: 'Quần Kaki Nữ' }, { maloai: 'LSP0015', tenloai: 'Quần Short/Jogger Nữ' },{ maloai: 'LSP0016', tenloai: 'Đầm Nữ' },{ maloai: 'LSP0017', tenloai: 'Váy Nữ' }, {maloai: 'LSP0018', tenloai: 'Phụ Kiện Nữ' }])

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
  tensanpham: 'Đầm 2 Lớp Phối Lụa Tay Phồng MS 48M5142',
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

Sanpham.create!(
  masanpham: 'SP0006',
  loaisanpham_id: 'LSP0007',
  thuonghieu_id: 'TH0011',
  tensanpham: 'Quần Jogger Kaki Y2010 H01',
  giaban: 435000,
  giakhuyenmai: 0,
  mota: ''
).chitietsps.create!([
    {
        machitietsp: '06728991811',
        mausp: 'Đen',
        size: 'S',
        hinhanhsp: 'jogger1.jpg',
        soluongton: 40,
    },
    {
        machitietsp: '06728991812',
        mausp: 'Đen',
        size: 'M',
        hinhanhsp: 'jogger1.jpg',
        soluongton: 70,
    },
    {
        machitietsp: '06728991813',
        mausp: 'Đen',
        size: 'L',
        hinhanhsp: 'jogger1.jpg',
        soluongton: 80,
    },
    {
        machitietsp: '06728991814',
        mausp: 'Đen',
        size: 'XL',
        hinhanhsp: 'jogger1.jpg',
        soluongton: 80,
    },
    {
        machitietsp: '06728991815',
        mausp: 'Kem',
        size: 'S',
        hinhanhsp: 'joggerkem.jpg',
        soluongton: 40,
    },
    {
        machitietsp: '06728991816',
        mausp: 'Kem',
        size: 'M',
        hinhanhsp: 'joggerkem.jpg',
        soluongton: 70,
    },
    {
        machitietsp: '0924161417',
        mausp: 'Kem',
        size: 'L',
        hinhanhsp: 'joggerkem.jpg',
        soluongton: 80,
    },
    {
        machitietsp: '0924161418',
        mausp: 'Kem',
        size: 'XL',
        hinhanhsp: 'joggerkem.jpg',
        soluongton: 80,
    },
    {
        machitietsp: '06728991819',
        mausp: 'Xanh Đen',
        size: 'S',
        hinhanhsp: 'joggerxanhden.jpg',
        soluongton: 40,
    },
    {
        machitietsp: '06728991820',
        mausp: 'Xanh Đen',
        size: 'M',
        hinhanhsp: 'joggerxanhden.jpg',
        soluongton: 70,
    },
    {
        machitietsp: '0924161421',
        mausp: 'Xanh Đen',
        size: 'L',
        hinhanhsp: 'joggerxanhden.jpg',
        soluongton: 80,
    },
    {
        machitietsp: '0924161422',
        mausp: 'Xanh Đen',
        size: 'XL',
        hinhanhsp: 'joggerxanhden.jpg',
        soluongton: 80,
    }
])

Sanpham.create!(
  masanpham: 'SP0007',
  loaisanpham_id: 'LSP0003',
  thuonghieu_id: 'TH0001',
  tensanpham: 'Áo Khoác Hoodie CL04',
  giaban: 375000,
  giakhuyenmai: 0,
  mota: ''
).chitietsps.create!([
    {
        machitietsp: '2527869100',
        mausp: 'Đen',
        size: 'L',
        hinhanhsp: 'aokhoacDen.jpg',
        soluongton: 5,
    },
    {
        machitietsp: '2527869101',
        mausp: 'Đen',
        size: 'XL',
        hinhanhsp: 'aokhoacDen.jpg',
        soluongton: 10,
    },
    {
        machitietsp: '2527869102',
        mausp: 'Trắng',
        size: 'L',
        hinhanhsp: 'aokhoacTrang.jpg',
        soluongton: 20,
    },
    {
        machitietsp: '2527869103',
        mausp: 'Trắng',
        size: 'XL',
        hinhanhsp: 'aokhoacTrang.jpg',
        soluongton: 10,
    }
])

Sanpham.create!(
  masanpham: 'SP0008',
  loaisanpham_id: 'LSP0008',
  thuonghieu_id: 'TH0007',
  tensanpham: 'Nón U CL21',
  giaban: 215000,
  giakhuyenmai: 0,
  mota: ''
).chitietsps.create!([
    {
        machitietsp: '11111100001',
        mausp: 'Đen',
        size: 'Free Size',
        hinhanhsp: 'non.jpg',
        soluongton: 3,
    }
])

Sanpham.create!(
  masanpham: 'SP0009',
  loaisanpham_id: 'LSP0018',
  thuonghieu_id: 'TH0007',
  tensanpham: 'Nón U CL21',
  giaban: 215000,
  giakhuyenmai: 0,
  mota: ''
).chitietsps.create!([
    {
        machitietsp: '11111100002',
        mausp: 'Đen',
        size: 'Free Size',
        hinhanhsp: 'non.jpg',
        soluongton: 4,
    }
])

Sanpham.create!(
  masanpham: 'SP0010',
  loaisanpham_id: 'LSP0008',
  thuonghieu_id: 'TH0002',
  tensanpham: 'PKTT Khẩu Trang A01',
  giaban: 75000,
  giakhuyenmai: 0,
  mota: ''
).chitietsps.create!([
    {
        machitietsp: '27490111920',
        mausp: 'Đen',
        size: 'Free Size',
        hinhanhsp: 'khautrang.jpg',
        soluongton: 25,
    },
])

Sanpham.create!(
  masanpham: 'SP0011',
  loaisanpham_id: 'LSP0018',
  thuonghieu_id: 'TH0002',
  tensanpham: 'PKTT Khẩu Trang A01',
  giaban: 75000,
  giakhuyenmai: 0,
  mota: ''
).chitietsps.create!([
    {
        machitietsp: '27490111921',
        mausp: 'Đen',
        size: 'Free Size',
        hinhanhsp: 'khautrang.jpg',
        soluongton: 25,
    },
])

Sanpham.create!(
  masanpham: 'SP0012',
  loaisanpham_id: 'LSP0008',
  thuonghieu_id: 'TH0003',
  tensanpham: 'PKTT Underwear A21',
  giaban: 115000,
  giakhuyenmai: 0,
  mota: ''
).chitietsps.create!([
    {
        machitietsp: '092176225111',
        mausp: 'Xám',
        size: 'M',
        hinhanhsp: 'underwear.jpg',
        soluongton: 30,
    },
    {
        machitietsp: '092176225112',
        mausp: 'Xám',
        size: 'L',
        hinhanhsp: 'underwear.jpg',
        soluongton: 20,
    },
    {
        machitietsp: '092176225113',
        mausp: 'Xám',
        size: 'XL',
        hinhanhsp: 'underwear.jpg',
        soluongton: 10,
    }
])

Sanpham.create!(
  masanpham: 'SP0013',
  loaisanpham_id: 'LSP0006',
  thuonghieu_id: 'TH0003',
  tensanpham: 'Quần Kaki O2010 C04',
  giaban: 475000,
  giakhuyenmai: 0,
  mota: ''
).chitietsps.create!([
    {
        machitietsp: '22214658641',
        mausp: 'Xanh Đen',
        size: '29',
        hinhanhsp: 'kakiXanhden.jpg',
        soluongton: 30,
    },
    {
        machitietsp: '22214658642',
        mausp: 'Xanh Đen',
        size: '30',
        hinhanhsp: 'kakiXanhden.jpg',
        soluongton: 20,
    },
    {
        machitietsp: '22214658643',
        mausp: 'Xanh Đen',
        size: '31',
        hinhanhsp: 'kakiXanhden.jpg',
        soluongton: 10,
    },
    {
        machitietsp: '22214658644',
        mausp: 'Xanh Đen',
        size: '32',
        hinhanhsp: 'kakiXanhden.jpg',
        soluongton: 80,
    },
    {
        machitietsp: '22214658645',
        mausp: 'Xanh Đen',
        size: '33',
        hinhanhsp: 'kakiXanhden.jpg',
        soluongton: 40,
    },
    {
        machitietsp: '22214658646',
        mausp: 'Xám Trắng',
        size: '29',
        hinhanhsp: 'kakiXamtrang.jpg',
        soluongton: 70,
    },
    {
        machitietsp: '22214658647',
        mausp: 'Xám Trắng',
        size: '30',
        hinhanhsp: 'kakiXamtrang.jpg',
        soluongton: 80,
    },
    {
        machitietsp: '22214658648',
        mausp: 'Xám Trắng',
        size: '31',
        hinhanhsp: 'kakiXamtrang.jpg',
        soluongton: 80,
    },
    {
        machitietsp: '22214658649',
        mausp: 'Xám Trắng',
        size: '32',
        hinhanhsp: 'kakiXamtrang.jpg',
        soluongton: 40,
    },
    {
        machitietsp: '22214658650',
        mausp: 'Xám Trắng',
        size: '33',
        hinhanhsp: 'kakiXamtrang.jpg',
        soluongton: 70,
    }
])

Sanpham.create!(
  masanpham: 'SP0014',
  loaisanpham_id: 'LSP0006',
  thuonghieu_id: 'TH0006',
  tensanpham: 'Quần Kaki NEM02 A05',
  giaban: 515000,
  giakhuyenmai: 0,
  mota: ''
).chitietsps.create!([
    {
        machitietsp: '56211827990',
        mausp: 'Đen',
        size: '29',
        hinhanhsp: 'kakiDen.jpg',
        soluongton: 40,
    },
    {
        machitietsp: '56211827991',
        mausp: 'Đen',
        size: '30',
        hinhanhsp: 'kakiDen.jpg',
        soluongton: 70,
    },
    {
        machitietsp: '56211827992',
        mausp: 'Đen',
        size: '31',
        hinhanhsp: 'kakiDen.jpg',
        soluongton: 80,
    },
    {
        machitietsp: '56211827993',
        mausp: 'Đen',
        size: '32',
        hinhanhsp: 'kakiDen.jpg',
        soluongton: 80,
    },
    {
        machitietsp: '56211827994',
        mausp: 'Đen',
        size: '33',
        hinhanhsp: 'kakiDen.jpg',
        soluongton: 40,
    },
    {
        machitietsp: '56211827995',
        mausp: 'Xám',
        size: '29',
        hinhanhsp: 'kakiXam.jpg',
        soluongton: 70,
    },
    {
        machitietsp: '56211827996',
        mausp: 'Xám',
        size: '30',
        hinhanhsp: 'kakiXam.jpg',
        soluongton: 80,
    },
    {
        machitietsp: '56211827997',
        mausp: 'Xám',
        size: '31',
        hinhanhsp: 'kakiXam.jpg',
        soluongton: 80,
    },
    {
        machitietsp: '56211827998',
        mausp: 'Xám',
        size: '32',
        hinhanhsp: 'kakiXam.jpg',
        soluongton: 40,
    },
    {
        machitietsp: '56211827999',
        mausp: 'Xám',
        size: '33',
        hinhanhsp: 'kakiXam.jpg',
        soluongton: 70,
    },
    {
        machitietsp: '56211827911',
        mausp: 'Nâu',
        size: '29',
        hinhanhsp: 'kakiNau.jpg',
        soluongton: 80,
    },
    {
        machitietsp: '56211827912',
        mausp: 'Nâu',
        size: '30',
        hinhanhsp: 'kakiNau.jpg',
        soluongton: 80,
    },
    {
        machitietsp: '56211827913',
        mausp: 'Nâu',
        size: '31',
        hinhanhsp: 'kakiNau.jpg',
        soluongton: 20,
    },
    {
        machitietsp: '56211827914',
        mausp: 'Nâu',
        size: '32',
        hinhanhsp: 'kakiNau.jpg',
        soluongton: 30,
    },
    {
        machitietsp: '56211827915',
        mausp: 'Nâu',
        size: '33',
        hinhanhsp: 'kakiNau.jpg',
        soluongton: 40,
    },
    {
        machitietsp: '56211827916',
        mausp: 'Xanh Rêu',
        size: '29',
        hinhanhsp: 'kakiXanhreu.jpg',
        soluongton: 15,
    },
    {
        machitietsp: '56211827917',
        mausp: 'Xanh Rêu',
        size: '30',
        hinhanhsp: 'kakiXanhreu.jpg',
        soluongton: 46,
    },
    {
        machitietsp: '56211827918',
        mausp: 'Xanh Rêu',
        size: '31',
        hinhanhsp: 'kakiXanhreu.jpg',
        soluongton: 64,
    },
    {
        machitietsp: '56211827919',
        mausp: 'Xanh Rêu',
        size: '32',
        hinhanhsp: 'kakiXanhreu.jpg',
        soluongton: 14,
    },
    {
        machitietsp: '56211827920',
        mausp: 'Xanh Rêu',
        size: '33',
        hinhanhsp: 'kakiXanhreu.jpg',
        soluongton: 34,
    },
    {
        machitietsp: '56211827921',
        mausp: 'Xanh Đen',
        size: '29',
        hinhanhsp: 'kakiXanhdenA05.jpg',
        soluongton: 15,
    },
    {
        machitietsp: '56211827922',
        mausp: 'Xanh Đen',
        size: '30',
        hinhanhsp: 'kakiXanhdenA05.jpg',
        soluongton: 46,
    },
    {
        machitietsp: '56211827923',
        mausp: 'Xanh Đen',
        size: '31',
        hinhanhsp: 'kakiXanhden.jpg',
        soluongton: 30,
    },
    {
        machitietsp: '56211827924',
        mausp: 'Xanh Đen',
        size: '32',
        hinhanhsp: 'kakiXanhden.jpg',
        soluongton: 14,
    },
    {
        machitietsp: '56211827925',
        mausp: 'Xanh Đen',
        size: '33',
        hinhanhsp: 'kakiXanhden.jpg',
        soluongton: 34,
    }
])

Sanpham.create!(
  masanpham: 'SP0015',
  loaisanpham_id: 'LSP0005',
  thuonghieu_id: 'TH0010',
  tensanpham: 'Quần Jeans FORM REGULAR Q5006',
  giaban: 395000,
  giakhuyenmai: 0,
  mota: ''
).chitietsps.create!([
    {
        machitietsp: '12656890301',
        mausp: 'Xanh Đen',
        size: '29',
        hinhanhsp: 'jeansXanhden.jpg',
        soluongton: 30,
    },
    {
        machitietsp: '12656890302',
        mausp: 'Xanh Đen',
        size: '30',
        hinhanhsp: 'jeansXanhden.jpg',
        soluongton: 20,
    },
    {
        machitietsp: '12656890303',
        mausp: 'Xanh Đen',
        size: '31',
        hinhanhsp: 'jeansXanhden.jpg',
        soluongton: 10,
    },
    {
        machitietsp: '12656890304',
        mausp: 'Xanh Đen',
        size: '32',
        hinhanhsp: 'jeansXanhden.jpg',
        soluongton: 80,
    },
    {
        machitietsp: '12656890305',
        mausp: 'Xanh Đen',
        size: '33',
        hinhanhsp: 'jeansXanhden.jpg',
        soluongton: 40,
    },
    {
        machitietsp: '12656890306',
        mausp: 'Xanh Biển',
        size: '29',
        hinhanhsp: 'jeansXanhbien.jpg',
        soluongton: 70,
    },
    {
        machitietsp: '12656890307',
        mausp: 'Xanh Biển',
        size: '30',
        hinhanhsp: 'jeansXanhbien.jpg',
        soluongton: 80,
    },
    {
        machitietsp: '12656890308',
        mausp: 'Xanh Biển',
        size: '31',
        hinhanhsp: 'jeansXanhbien.jpg',
        soluongton: 80,
    },
    {
        machitietsp: '12656890309',
        mausp: 'Xanh Biển',
        size: '32',
        hinhanhsp: 'jeansXanhbien.jpg',
        soluongton: 40,
    },
    {
        machitietsp: '12656890310',
        mausp: 'Xanh Biển',
        size: '33',
        hinhanhsp: 'jeansXanhbien.jpg',
        soluongton: 70,
    }
])

Sanpham.create!(
  masanpham: 'SP0016',
  loaisanpham_id: 'LSP0005',
  thuonghieu_id: 'TH0010',
  tensanpham: 'Quần Jeans FORM SLIMFIT QJ0001',
  giaban: 385000,
  giakhuyenmai: 0,
  mota: ''
).chitietsps.create!([
    {
        machitietsp: '12656890311',
        mausp: 'Xanh',
        size: '29',
        hinhanhsp: 'jeansXanh.jpg',
        soluongton: 30,
    },
    {
        machitietsp: '12656890312',
        mausp: 'Xanh',
        size: '30',
        hinhanhsp: 'jeansXanh.jpg',
        soluongton: 20,
    },
    {
        machitietsp: '12656890313',
        mausp: 'Xanh',
        size: '31',
        hinhanhsp: 'jeansXanh.jpg',
        soluongton: 10,
    },
    {
        machitietsp: '12656890314',
        mausp: 'Xanh',
        size: '32',
        hinhanhsp: 'jeansXanh.jpg',
        soluongton: 80,
    },
    {
        machitietsp: '12656890315',
        mausp: 'Xanh Biển',
        size: '30',
        hinhanhsp: 'jeansXanhbien1.jpg',
        soluongton: 80,
    },
    {
        machitietsp: '12656890316',
        mausp: 'Xanh Biển',
        size: '31',
        hinhanhsp: 'jeansXanhbien1.jpg',
        soluongton: 80,
    },
    {
        machitietsp: '12656890317',
        mausp: 'Xanh Biển',
        size: '32',
        hinhanhsp: 'jeansXanhbien1.jpg',
        soluongton: 40,
    },
    {
        machitietsp: '12656890318',
        mausp: 'Xanh Biển',
        size: '33',
        hinhanhsp: 'jeansXanhbien1.jpg',
        soluongton: 70,
    },
    {
        machitietsp: '12656890319',
        mausp: 'Xanh Da Trời',
        size: '29',
        hinhanhsp: 'jeansXanhdatroi.jpg',
        soluongton: 30,
    },
    {
        machitietsp: '12656890320',
        mausp: 'Xanh Da Troi',
        size: '30',
        hinhanhsp: 'jeansXanhdatroi.jpg',
        soluongton: 20,
    },
    {
        machitietsp: '12656890321',
        mausp: 'Xanh Da Trời',
        size: '31',
        hinhanhsp: 'jeansXanhdatroi.jpg',
        soluongton: 10,
    },
    {
        machitietsp: '12656890322',
        mausp: 'Xanh Da Trời',
        size: '32',
        hinhanhsp: 'jeansXanhdatroi.jpg',
        soluongton: 2,
    },
    {
        machitietsp: '12656890323',
        mausp: 'Xanh Da Trời',
        size: '33',
        hinhanhsp: 'jeansXanhdatroi.jpg',
        soluongton: 12,
    },
])

Sanpham.create!(
  masanpham: 'SP0017',
  loaisanpham_id: 'LSP0004',
  thuonghieu_id: 'TH0003',
  tensanpham: 'Quần Tây LINEN Lưng Thun QT008',
  giaban: 425000,
  giakhuyenmai: 0,
  mota: ''
).chitietsps.create!([
    {
        machitietsp: '89212347780',
        mausp: 'Kem',
        size: '29',
        hinhanhsp: 'tayKem.png',
        soluongton: 30,
    },
    {
        machitietsp: '89212347781',
        mausp: 'Kem',
        size: '30',
        hinhanhsp: 'tayKem.png',
        soluongton: 20,
    },
    {
        machitietsp: '89212347782',
        mausp: 'Kem',
        size: '31',
        hinhanhsp: 'tayKem.png',
        soluongton: 10,
    },
    {
        machitietsp: '89212347783',
        mausp: 'Kem',
        size: '32',
        hinhanhsp: 'tayKem.png',
        soluongton: 80,
    },
    {
        machitietsp: '89212347784',
        mausp: 'Kem',
        size: '33',
        hinhanhsp: 'tayKem.png',
        soluongton: 30,
    },
    {
        machitietsp: '89212347785',
        mausp: 'Xanh Đen',
        size: '29',
        hinhanhsp: 'tayXanhden.png',
        soluongton: 80,
    },
    {
        machitietsp: '89212347786',
        mausp: 'Xanh Đen',
        size: '30',
        hinhanhsp: 'tayXanhden.png',
        soluongton: 40,
    },
    {
        machitietsp: '89212347787',
        mausp: 'Xanh Đen',
        size: '31',
        hinhanhsp: 'tayXanhden.png',
        soluongton: 70,
    },
    {
        machitietsp: '89212347788',
        mausp: 'Xanh Đen',
        size: '32',
        hinhanhsp: 'tayXanhden.png',
        soluongton: 30,
    },
    {
        machitietsp: '89212347789',
        mausp: 'Xanh Đen',
        size: '33',
        hinhanhsp: 'tayXanhden.png',
        soluongton: 20,
    }
])

Sanpham.create!(
  masanpham: 'SP0018',
  loaisanpham_id: 'LSP0004',
  thuonghieu_id: 'TH0008',
  tensanpham: 'Quần Tây REGULAR QT008',
  giaban: 525000,
  giakhuyenmai: 0,
  mota: ''
).chitietsps.create!([
    {
        machitietsp: '5131501050',
        mausp: 'Đen',
        size: '29',
        hinhanhsp: 'tayDen.jpg',
        soluongton: 30,
    },
    {
        machitietsp: '5131501051',
        mausp: 'Đen',
        size: '30',
        hinhanhsp: 'tayDen.jpg',
        soluongton: 20,
    },
    {
        machitietsp: '5131501052',
        mausp: 'Đen',
        size: '31',
        hinhanhsp: 'tayDen.jpg',
        soluongton: 10,
    },
    {
        machitietsp: '5131501053',
        mausp: 'Đen',
        size: '32',
        hinhanhsp: 'tayDen.jpg',
        soluongton: 80,
    },
    {
        machitietsp: '5131501054',
        mausp: 'Đen',
        size: '33',
        hinhanhsp: 'tayDen.jpg',
        soluongton: 30,
    },
    {
        machitietsp: '5131501055',
        mausp: 'Xám Chuột',
        size: '29',
        hinhanhsp: 'tayXamchuot.jpg',
        soluongton: 80,
    },
    {
        machitietsp: '5131501056',
        mausp: 'Xám Chuột',
        size: '30',
        hinhanhsp: 'tayXamchuot.jpg',
        soluongton: 40,
    },
    {
        machitietsp: '5131501057',
        mausp: 'Xám Chuột',
        size: '31',
        hinhanhsp: 'tayXamchuot.jpg',
        soluongton: 70,
    },
    {
        machitietsp: '5131501058',
        mausp: 'Xám Chuột',
        size: '32',
        hinhanhsp: 'tayXamchuot.jpg',
        soluongton: 30,
    },
    {
        machitietsp: '5131501059',
        mausp: 'Xám Chuột',
        size: '33',
        hinhanhsp: 'tayXamchuot.jpg',
        soluongton: 20,
    },
    {
        machitietsp: '51315010510',
        mausp: 'Xanh Bích',
        size: '29',
        hinhanhsp: 'tayXanhbich.jpeg',
        soluongton: 80,
    },
    {
        machitietsp: '51315010511',
        mausp: 'Xanh Bích',
        size: '30',
        hinhanhsp: 'tayXanhbich.jpeg',
        soluongton: 40,
    },
    {
        machitietsp: '51315010512',
        mausp: 'Xanh Bích',
        size: '31',
        hinhanhsp: 'tayXanhbich.jpeg',
        soluongton: 70,
    },
    {
        machitietsp: '51315010513',
        mausp: 'Xanh Bích',
        size: '32',
        hinhanhsp: 'tayXanhbich.jpeg',
        soluongton: 30,
    },
    {
        machitietsp: '51315010514',
        mausp: 'Xanh Bích',
        size: '33',
        hinhanhsp: 'tayXanhbich.jpeg',
        soluongton: 20,
    },
    {
        machitietsp: '51315010515',
        mausp: 'Nâu',
        size: '29',
        hinhanhsp: 'tayNau.jpeg',
        soluongton: 80,
    },
    {
        machitietsp: '51315010516',
        mausp: 'Nâu',
        size: '30',
        hinhanhsp: 'tayNau.jpeg',
        soluongton: 40,
    },
    {
        machitietsp: '51315010517',
        mausp: 'Nâu',
        size: '31',
        hinhanhsp: 'tayNau.jpeg',
        soluongton: 70,
    },
    {
        machitietsp: '51315010518',
        mausp: 'Nâu',
        size: '32',
        hinhanhsp: 'tayNau.jpeg',
        soluongton: 30,
    },
    {
        machitietsp: '51315010519',
        mausp: 'Nâu',
        size: '33',
        hinhanhsp: 'tayNau.jpeg',
        soluongton: 20,
    }
])

Sanpham.create!(
  masanpham: 'SP0019',
  loaisanpham_id: 'LSP0008',
  thuonghieu_id: 'TH0001',
  tensanpham: 'Túi Đeo Ngang Hông MS 51E2016',
  giaban: 300000,
  giakhuyenmai: 0,
  mota: ''
).chitietsps.create!([
    {
        machitietsp: '77281829740',
        mausp: 'Đen',
        size: 'L',
        hinhanhsp: 'tuideoDen.png',
        soluongton: 30,
    },
    {
        machitietsp: '77281829744',
        mausp: 'Đen',
        size: 'XL',
        hinhanhsp: 'tuideoDen.png',
        soluongton: 30,
    },
    {
        machitietsp: '77281829745',
        mausp: 'Xám',
        size: 'M',
        hinhanhsp: 'tuideoXam.png',
        soluongton: 80,
    },
    {
        machitietsp: '77281829746',
        mausp: 'Xám',
        size: 'L',
        hinhanhsp: 'tuideoXam.png',
        soluongton: 40,
    },
    {
        machitietsp: '77281829747',
        mausp: 'Xám',
        size: 'XL',
        hinhanhsp: 'tuideoXam.png',
        soluongton: 70,
    }
])

Sanpham.create!(
  masanpham: 'SP0020',
  loaisanpham_id: 'LSP0011',
  thuonghieu_id: 'TH0012',
  tensanpham: 'Áo Khoác Dù Form Rộng Cá Tính',
  giaban: 365000,
  giakhuyenmai: 0,
  mota: ''
).chitietsps.create!([
    {
        machitietsp: '22768939301',
        mausp: 'Đen',
        size: 'M',
        hinhanhsp: 'aokhoacNuDen.jpg',
        soluongton: 30,
    },
    {
        machitietsp: '22768939302',
        mausp: 'Đen',
        size: 'L',
        hinhanhsp: 'aokhoacNuDen.jpg',
        soluongton: 30,
    },
    {
        machitietsp: '22768939303',
        mausp: 'Đen',
        size: 'XL',
        hinhanhsp: 'aokhoacNuDen.jpg',
        soluongton: 80,
    },
    {
        machitietsp: '22768939304',
        mausp: 'Xám',
        size: 'M',
        hinhanhsp: 'aokhoacNuXam.jpg',
        soluongton: 40,
    },
    {
        machitietsp: '22768939305',
        mausp: 'Xám',
        size: 'L',
        hinhanhsp: 'aokhoacNuXam.jpg',
        soluongton: 70,
    },
    {
        machitietsp: '22768939306',
        mausp: 'Xám',
        size: 'XL',
        hinhanhsp: 'aokhoacNuXam.jpg',
        soluongton: 40,
    },
    {
        machitietsp: '22768939307',
        mausp: 'Xanh Đen',
        size: 'M',
        hinhanhsp: 'aokhoacNuXanhden.jpg',
        soluongton: 70,
    },
    {
        machitietsp: '22768939308',
        mausp: 'Xanh Đen',
        size: 'L',
        hinhanhsp: 'aokhoacNuXanhden.jpg',
        soluongton: 70,
    },
    {
        machitietsp: '22768939309',
        mausp: 'Xanh Đen',
        size: 'XL',
        hinhanhsp: 'aokhoacNuXanhden.jpg',
        soluongton: 70,
    }
])

Sanpham.create!(
  masanpham: 'SP0021',
  loaisanpham_id: 'LSP0010',
  thuonghieu_id: 'TH0004',
  tensanpham: 'Áo Sơ Mi Nữ Bèo Cột Nơ Ren',
  giaban: 555000,
  giakhuyenmai: 0,
  mota: ''
).chitietsps.create!([
    {
        machitietsp: '44322123340',
        mausp: 'Xanh Đen',
        size: '29',
        hinhanhsp: 'aosominuXanhden.jpg',
        soluongton: 30,
    },
    {
        machitietsp: '44322123341',
        mausp: 'Xanh Đen',
        size: '30',
        hinhanhsp: 'aosominuXanhden.jpg',
        soluongton: 30,
    },
    {
        machitietsp: '44322123342',
        mausp: 'Xanh Đen',
        size: '31',
        hinhanhsp: 'aosominuXanhden.jpg',
        soluongton: 80,
    },
    {
        machitietsp: '44322123343',
        mausp: 'Xanh Đen',
        size: '32',
        hinhanhsp: 'aosominuXanhden.jpg',
        soluongton: 40,
    },
    {
        machitietsp: '44322123344',
        mausp: 'Trắng',
        size: '29',
        hinhanhsp: 'aosominuTrang.jpg',
        soluongton: 70,
    },
    {
        machitietsp: '44322123345',
        mausp: 'Trắng',
        size: '30',
        hinhanhsp: 'aosominuTrang.jpg',
        soluongton: 40,
    },
    {
        machitietsp: '44322123346',
        mausp: 'Trắng',
        size: '31',
        hinhanhsp: 'aosominuTrang.jpg',
        soluongton: 70,
    },
    {
        machitietsp: '44322123347',
        mausp: 'Trắng',
        size: '32',
        hinhanhsp: 'aosominuTrang.jpg',
        soluongton: 70,
    }
])

Sanpham.create!(
  masanpham: 'SP0022',
  loaisanpham_id: 'LSP0009',
  thuonghieu_id: 'TH0012',
  tensanpham: 'Áo Thun Nữ Story Cá Tính',
  giaban: 245000,
  giakhuyenmai: 0,
  mota: ''
).chitietsps.create!([
    {
        machitietsp: '77855578441',
        mausp: 'Xám',
        size: 'S',
        hinhanhsp: 'aothunnuXam.jpg',
        soluongton: 10,
    },
    {
        machitietsp: '77855578442',
        mausp: 'Xám',
        size: 'M',
        hinhanhsp: 'aothunnuXam.jpg',
        soluongton: 20,
    },
    {
        machitietsp: '77855578443',
        mausp: 'Xám',
        size: 'L',
        hinhanhsp: 'aothunnuXam.jpg',
        soluongton: 30,
    },
    {
        machitietsp: '77855578444',
        mausp: 'Xám',
        size: 'XL',
        hinhanhsp: 'aothunnuXam.jpg',
        soluongton: 40,
    },
    {
        machitietsp: '77855578445',
        mausp: 'Trắng',
        size: 'S',
        hinhanhsp: 'aothunnuTrang.jpg',
        soluongton: 40,
    },
    {
        machitietsp: '77855578446',
        mausp: 'Trắng',
        size: 'M',
        hinhanhsp: 'aothunnuTrang.jpg',
        soluongton: 30,
    },
    {
        machitietsp: '77855578447',
        mausp: 'Trắng',
        size: 'L',
        hinhanhsp: 'aothunnuTrang.jpg',
        soluongton: 20,
    },
    {
        machitietsp: '77855578448',
        mausp: 'Trắng',
        size: 'XL',
        hinhanhsp: 'aothunnuTrang.jpg',
        soluongton: 10,
    }
])

Sanpham.create!(
  masanpham: 'SP0023',
  loaisanpham_id: 'LSP0015',
  thuonghieu_id: 'TH0006',
  tensanpham: 'Quần Short Nữ Công Sở SKYVER J-06',
  giaban: 395000,
  giakhuyenmai: 0,
  mota: ''
).chitietsps.create!([
    {
        machitietsp: '22334455671',
        mausp: 'Đen',
        size: '29',
        hinhanhsp: 'quanshortNuDen.jpg',
        soluongton: 10,
    },
    {
        machitietsp: '22334455672',
        mausp: 'Đen',
        size: '30',
        hinhanhsp: 'quanshortNuDen.jpg',
        soluongton: 20,
    },
    {
        machitietsp: '22334455673',
        mausp: 'Đen',
        size: '31',
        hinhanhsp: 'quanshortNuDen.jpg',
        soluongton: 30,
    },
    {
        machitietsp: '22334455674',
        mausp: 'Đen',
        size: '32',
        hinhanhsp: 'quanshortNuDen.jpg',
        soluongton: 40,
    },
    {
        machitietsp: '22334455675',
        mausp: 'Đen',
        size: '33',
        hinhanhsp: 'quanshortNuDen.jpg',
        soluongton: 40,
    },
    {
        machitietsp: '22334455676',
        mausp: 'Xám',
        size: '29',
        hinhanhsp: 'quanshortNuXam.jpg',
        soluongton: 30,
    },
    {
        machitietsp: '22334455677',
        mausp: 'Xám',
        size: '30',
        hinhanhsp: 'quanshortNuXam.jpg',
        soluongton: 20,
    },
    {
        machitietsp: '22334455678',
        mausp: 'Xám',
        size: '31',
        hinhanhsp: 'quanshortNuXam.jpg',
        soluongton: 10,
    },
    {
        machitietsp: '22334455679',
        mausp: 'Xám',
        size: '32',
        hinhanhsp: 'quanshortNuXam.jpg',
        soluongton: 10,
    },
    {
        machitietsp: '223344556710',
        mausp: 'Xám',
        size: '33',
        hinhanhsp: 'quanshortNuXam.jpg',
        soluongton: 10,
    },
    {
        machitietsp: '223344556711',
        mausp: 'Đỏ',
        size: '29',
        hinhanhsp: 'quanshortNuDo.jpg',
        soluongton: 10,
    },
    {
        machitietsp: '223344556712',
        mausp: 'Đỏ',
        size: '30',
        hinhanhsp: 'quanshortNuDo.jpg',
        soluongton: 20,
    },
    {
        machitietsp: '223344556713',
        mausp: 'Đỏ',
        size: '31',
        hinhanhsp: 'quanshortNuDo.jpg',
        soluongton: 30,
    },
    {
        machitietsp: '223344556714',
        mausp: 'Đỏ',
        size: '32',
        hinhanhsp: 'quanshortNuDo.jpg',
        soluongton: 15,
    },
    {
        machitietsp: '223344556715',
        mausp: 'Đỏ',
        size: '33',
        hinhanhsp: 'quanshortNuDo.jpg',
        soluongton: 26,
    }
])

Sanpham.create!(
  masanpham: 'SP0024',
  loaisanpham_id: 'LSP0013',
  thuonghieu_id: 'TH0005',
  tensanpham: 'Quần Jeans Dài Nữ ECOJEANS Viền Túi',
  giaban: 468000,
  giakhuyenmai: 0,
  mota: ''
).chitietsps.create!([
    {
        machitietsp: '12585536801',
        mausp: 'Xanh',
        size: '29',
        hinhanhsp: 'quanjeansnuXanh.jpg',
        soluongton: 10,
    },
    {
        machitietsp: '12585536802',
        mausp: 'Xanh',
        size: '30',
        hinhanhsp: 'quanjeansnuXanh.jpg',
        soluongton: 20,
    },
    {
        machitietsp: '12585536803',
        mausp: 'Xanh',
        size: '31',
        hinhanhsp: 'quanjeansnuXanh.jpg',
        soluongton: 30,
    },
    {
        machitietsp: '12585536804',
        mausp: 'Xanh',
        size: '32',
        hinhanhsp: 'quanjeansnuXanh.jpg',
        soluongton: 40,
    },
    {
        machitietsp: '12585536805',
        mausp: 'Xanh',
        size: '33',
        hinhanhsp: 'quanjeansnuXanh.jpg',
        soluongton: 40,
    }
])

Sanpham.create!(
  masanpham: 'SP0025',
  loaisanpham_id: 'LSP0015',
  thuonghieu_id: 'TH0010',
  tensanpham: 'Quần Jeans Dài Nữ Basis 043M1-2',
  giaban: 425000,
  giakhuyenmai: 0,
  mota: ''
).chitietsps.create!([
    {
        machitietsp: '4532175901',
        mausp: 'Xanh Đen',
        size: '29',
        hinhanhsp: 'quanshortNuXanhden.jpg',
        soluongton: 10,
    },
    {
        machitietsp: '4532175902',
        mausp: 'Xanh Đen',
        size: '30',
        hinhanhsp: 'quanshortNuXanhden.jpg',
        soluongton: 20,
    },
    {
        machitietsp: '4532175903',
        mausp: 'Xanh Đen',
        size: '31',
        hinhanhsp: 'quanshortNuXanhden.jpg',
        soluongton: 30,
    },
    {
        machitietsp: '4532175904',
        mausp: 'Xanh Đen',
        size: '32',
        hinhanhsp: 'quanshortNuXanhden.jpg',
        soluongton: 40,
    },
    {
        machitietsp: '4532175905',
        mausp: 'Xanh Đen',
        size: '33',
        hinhanhsp: 'quanshortNuXanhden.jpg',
        soluongton: 40,
    },
    {
        machitietsp: '4532175906',
        mausp: 'Xanh',
        size: '29',
        hinhanhsp: 'quanshortNuXanh1.jpg',
        soluongton: 30,
    },
    {
        machitietsp: '4532175907',
        mausp: 'Xanh',
        size: '30',
        hinhanhsp: 'quanshortNuXanh1.jpg',
        soluongton: 20,
    },
    {
        machitietsp: '4532175908',
        mausp: 'Xanh',
        size: '31',
        hinhanhsp: 'quanshortNuXanh1.jpg',
        soluongton: 10,
    },
    {
        machitietsp: '4532175909',
        mausp: 'Xanh',
        size: '32',
        hinhanhsp: 'quanshortNuXanh1.jpg',
        soluongton: 10,
    },
    {
        machitietsp: '4532175910',
        mausp: 'Xanh',
        size: '33',
        hinhanhsp: 'quanshortNuXanh1.jpg',
        soluongton: 10,
    }
])

Sanpham.create!(
  masanpham: 'SP0026',
  loaisanpham_id: 'LSP0012',
  thuonghieu_id: 'TH0008',
  tensanpham: 'Quần Tây Công Sở Nữ 578',
  giaban: 535000,
  giakhuyenmai: 0,
  mota: ''
).chitietsps.create!([
    {
        machitietsp: '11567788291',
        mausp: 'Đen',
        size: '29',
        hinhanhsp: 'quantaynuDen.jpg',
        soluongton: 10,
    },
    {
        machitietsp: '11567788292',
        mausp: 'Đen',
        size: '30',
        hinhanhsp: 'quantaynuDen.jpg',
        soluongton: 20,
    },
    {
        machitietsp: '11567788293',
        mausp: 'Đen',
        size: '31',
        hinhanhsp: 'quantaynuDen.jpg',
        soluongton: 30,
    },
    {
        machitietsp: '11567788294',
        mausp: 'Đen',
        size: '32',
        hinhanhsp: 'quantaynuDen.jpg',
        soluongton: 40,
    },
    {
        machitietsp: '11567788295',
        mausp: 'Đen',
        size: '33',
        hinhanhsp: 'quantaynuDen.jpg',
        soluongton: 40,
    }
])