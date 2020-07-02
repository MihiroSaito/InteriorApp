class Item < ApplicationRecord
  
  mount_uploader :image, ImageUploader
  
  validates :title, :image, :category    , presence: true

  belongs_to :user
end
