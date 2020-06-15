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

ActiveRecord::Schema.define(version: 20200610025451) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chitietdathangs", primary_key: ["chitietsp_id", "dondathang_id"], force: :cascade do |t|
    t.string "chitietsp_id", null: false
    t.string "dondathang_id", null: false
    t.integer "soluong"
    t.decimal "thanhtien"
    t.index ["chitietsp_id", "dondathang_id"], name: "index_chitietdathangs_on_chitietsp_id_and_dondathang_id", unique: true
  end

  create_table "chitietsps", primary_key: "machitietsp", id: :string, force: :cascade do |t|
    t.string "sanpham_id"
    t.string "mausp"
    t.string "size"
    t.text "hinhanhsp"
    t.integer "soluongton"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "danhmucs", primary_key: "madanhmuc", id: :string, force: :cascade do |t|
    t.string "tendanhmuc"
  end

  create_table "dondathangs", primary_key: "madondathang", id: :string, force: :cascade do |t|
    t.text "ghichu"
    t.date "ngaydathang"
    t.date "ngaygiaohang"
    t.string "tinhtrang"
    t.decimal "tongtien"
  end

  create_table "khachhangs", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_khachhangs_on_email", unique: true
    t.index ["reset_password_token"], name: "index_khachhangs_on_reset_password_token", unique: true
  end

  create_table "loaisanphams", primary_key: "maloai", id: :string, force: :cascade do |t|
    t.string "danhmuc_id"
    t.string "tenloai"
  end

  create_table "sanphams", primary_key: "masanpham", id: :string, force: :cascade do |t|
    t.string "loaisanpham_id"
    t.string "thuonghieu_id"
    t.string "tensanpham"
    t.decimal "giaban"
    t.decimal "giakhuyenmai"
    t.text "mota"
  end

  create_table "thuonghieus", primary_key: "mathuonghieu", id: :string, force: :cascade do |t|
    t.string "tenthuonghieu"
    t.string "hinhanhthuonghieu"
    t.string "diachithuonghieu"
    t.string "emailthuonghieu"
  end

  create_table "tintucs", primary_key: "matintuc", id: :string, force: :cascade do |t|
    t.string "tieude"
    t.datetime "ngaybatdau"
    t.datetime "ngayketthuc"
    t.text "mota"
    t.string "hinhanhtintuc"
  end

  add_foreign_key "chitietdathangs", "chitietsps", primary_key: "machitietsp", name: "fk_chitietdathang_chitietsp"
  add_foreign_key "chitietdathangs", "dondathangs", primary_key: "madondathang", name: "fk_chitietdathang_dondathang"
  add_foreign_key "chitietsps", "sanphams", primary_key: "masanpham", name: "fk_chitietsp_sanpham"
  add_foreign_key "loaisanphams", "danhmucs", primary_key: "madanhmuc", name: "fk_loaisp_danhmuc"
  add_foreign_key "sanphams", "loaisanphams", primary_key: "maloai", name: "fk_sanpham_loaisp"
  add_foreign_key "sanphams", "thuonghieus", primary_key: "mathuonghieu", name: "fk_sanpham_thuonghieu"
end
