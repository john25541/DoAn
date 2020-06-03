class Danhmuc < ApplicationRecord
    self.primary_key = :madanhmuc 
    
    validates :madanhmuc, presence: true
    validates :tendanhmuc, presence: true
end
