class Chitietsp < ApplicationRecord
  self.primary_key = :machitietsp
  
  belongs_to :sanpham
  has_many :chitietdathangs
  has_and_belongs_to_many :dondathangs
  before_create :set_chitietsanpham_id

  validates :mausp, :size, :hinhanhsp, :soluongton ,presence: true
  mount_uploader :hinhanhsp, HinhanhspUploader

  def set_chitietsanpham_id
    self[:machitietsp] = "#{Time.now().to_i + rand(0..999) - rand(0..9999) + rand(0..999)}"
  end

end
