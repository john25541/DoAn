class Khuyenmai < ApplicationRecord
    has_many :chitietkms

    before_create :set_km_id

    def set_km_id
        self[:makhuyenmai] = "DDH#{Time.now().to_i + rand(0..999) - rand(0..9999) + rand(0..999)}"
    end
end
