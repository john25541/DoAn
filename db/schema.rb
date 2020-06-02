# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20200602104559) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chitietsps", primary_key: "machitietsp", id: :string, force: :cascade do |t|
    t.string "masp"
    t.string "mausp"
    t.string "size"
    t.text "hinhanhsp"
    t.integer "soluongton"
  end

  create_table "danhmucs", primary_key: "madanhmuc", id: :string, force: :cascade do |t|
    t.string "tendanhmuc"
  end

  create_table "loaisanphams", primary_key: "maloai", id: :string, force: :cascade do |t|
    t.string "madanhmucsp"
    t.string "tenloai"
  end

  create_table "sanphams", primary_key: "masanpham", id: :string, force: :cascade do |t|
    t.string "maloaisp"
    t.string "mathuonghieusp"
    t.string "tensanpham"
    t.decimal "giaban"
    t.decimal "giakhuyenmai"
    t.boolean "gioitinh"
    t.text "mota"
  end

  create_table "thuonghieus", primary_key: "mathuonghieu", id: :string, force: :cascade do |t|
    t.string "tenthuonghieu"
    t.string "hinhanhthuonghieu"
    t.string "diachithuonghieu"
    t.string "emailthuonghieu"
  end

  add_foreign_key "chitietsps", "sanphams", column: "masp", primary_key: "masanpham", name: "fk_chitietsp_sanpham"
  add_foreign_key "loaisanphams", "danhmucs", column: "madanhmucsp", primary_key: "madanhmuc", name: "fk_loaisp_danhmuc"
  add_foreign_key "sanphams", "loaisanphams", column: "maloaisp", primary_key: "maloai", name: "fk_sanpham_loaisp"
  add_foreign_key "sanphams", "thuonghieus", column: "mathuonghieusp", primary_key: "mathuonghieu", name: "fk_sanpham_thuonghieu"
end
