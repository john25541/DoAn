class Khachhang < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  self.name
  has_many :dondathangs

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  # validates :email, :hotenkhachhang, :diachi, :presence => true
  # validates :sodienthoai,:presence => true
  
  mount_uploader :anhdaidien, AvatarUploader

  def name
    return self.hotenkhachhang
  end
  
end
