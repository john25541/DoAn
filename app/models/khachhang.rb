class Khachhang < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  self.name
  has_many :dondathangs

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable , omniauth_providers: [:facebook, :google_oauth2]
  
  # validates :email, :hotenkhachhang, :diachi, :presence => true
  # validates :sodienthoai,:presence => true
  
  mount_uploader :anhdaidien, AvatarUploader

  def name
    return self.hotenkhachhang
  end

  def self.new_with_session params, session
    super.tap do |user|
      if data = session["devise.facebook_data"] &&
        session["devise.facebook_data"]["extra"]["raw_info"]
        user.email = data["email"] if user.email.blank?
      end
    end
  end

  def self.from_omniauth(auth)
    result = Khachhang.where(email: auth.info.email).first
    if result
      return result
    else
      where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
        user.email = auth.info.email
        user.password = Devise.friendly_token[0,20]
        user.hotenkhachhang = auth.info.name
        user.anhdaidien = auth.info.image
        user.uid = auth.uid
        user.provider = auth.provider
      end
    end
  end
end
