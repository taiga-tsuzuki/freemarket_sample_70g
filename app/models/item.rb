class Item < ApplicationRecord
  has_many :comments
  has_many :images
  belongs_to :user
  belongs_to :category
  belongs_to :brand

  validates :item_name, {presence: true, {length: {maximum: 40}}}
end
