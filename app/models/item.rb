class Item < ApplicationRecord
  has_many :comments
  has_many :images
  belongs_to :user
  belongs_to :category, dependent: :destroy, optional: true

  belongs_to :brand, optional: true
  accepts_nested_attributes_for :images, allow_destroy: true

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture

# fields_forを使うためのメソッドaccepts_nested_attributes_for

# allow_destroy: trueで、親(item)が削除されると紐づいているimage,category
  accepts_nested_attributes_for :images, allow_destroy: true

#   validates :item_name, presence: true
# # 商品名、商品詳細、商品状態、配送料、配送元、配送日時、商品化価格のバリデーション
  validates :item_name, :description, :category_id, :condition, :shipping_fee_payer, :prefecture_id, :shipping_days, :price, presence: true


  # 商品名40文字以内
  validates :item_name, length: {maximum: 40}
  # 商品詳細1000文字以内
  validates :description, length: {maximum: 1000}


  # 商品価格のバリデーション
  VALID_PRICEL_REGEX = /\A[0-9]+\z/
  validates :price, presence: true, numericality: { only_integer: true,
    greater_than: 300, less_than: 9999999
    }



end
