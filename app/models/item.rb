class Item < ApplicationRecord
  has_many :comments
  has_many :images
  belongs_to :user
  belongs_to :category
  belongs_to :brand



# fields_forを使うためのメソッドaccepts_nested_attributes_for
# allow_destroy: trueで、親(item)が削除されると紐づいているimage,category,brandが消える
  accepts_nested_attributes_for :images, allow_destroy: true
  accepts_nested_attributes_for :category, allow_destroy: true
  accepts_nested_attributes_for :brand, allow_destroy: true



# # 商品名、商品詳細、商品状態、配送料、配送元、配送日時、商品化価格のバリデーション
#   validates :item_name, :description, :condition, :shipping_fee_payer, :shipping_location, :shipping_days, :price, presence: true


#   # 商品名40文字以内
#   validates :item_name, length: {maximum: 40}
#   # 商品詳細1000文字以内
#   validates :description, length: {maximum: 1000}


#   # 商品価格のバリデーション(仮)
#   # VALID_PRICEL_REGEX = /\A[0-9]+\z/
#   # validates :price, format: {with: VALID_PRICEL_HALF}, numericality: { only_integer: true,
#   #   greater_than: 300, less_than: 9999999
#   #   }


end
