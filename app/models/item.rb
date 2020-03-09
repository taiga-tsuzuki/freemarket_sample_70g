class Item < ApplicationRecord
  has_many :comments
  has_many :images
  belongs_to :user
  belongs_to :category
  belongs_to :brand

  # 商品名のバリデーション
  validates :item_name, {presence: true, {length: {maximum: 40}}}
  # 商品詳細のバリデーション
  validates :description, {presence: true, {length: {maximum: 1000}}}
  # 商品状態のバリデーション
  validates :condition, presence: true
  # 配送料のバリデーション
  validates :shipping_fee_payer, presence: true
  # 配送元のバリデーション
  validates :shipping_location, presence: true
  # 配送日時のバリデーション
  validates :shipping_days, presence: true


  # 商品価格のバリデーション１(仮)
  validates :price, presence: true,

  # 商品価格のバリデーション２(仮)
  validates :price, presence: true, format: {with: VALID_PRICEL_HALF}, numericality: { only_integer: true,
    greater_than: 300, less_than: 9999999
    }


end
