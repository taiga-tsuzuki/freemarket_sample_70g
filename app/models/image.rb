class Image < ApplicationRecord
  belongs_to :item

  mount_uploader :image, ImageUploader

  # 商品画像のバリデーション
  validates :image, {presence: true, {length: {maximum: 10}}}
end