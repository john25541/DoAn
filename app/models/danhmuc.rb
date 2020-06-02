class Danhmuc < ApplicationRecord
    self.primary_keys = :madanhmuc 
    
    validates :madanhmuc, presence: true
    validates :tendanhmuc, presence: true
end
