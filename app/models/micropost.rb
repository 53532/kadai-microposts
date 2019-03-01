class Micropost < ApplicationRecord
  belongs_to :user
  has_many :favs,dependent: :destroy
  has_many :added_favs, through: :favs, source: :user
  
  
  validates :content, presence: true, length: { maximum: 255 }
end
