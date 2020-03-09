class Category < ApplicationRecord
  has_many :items
  has_ancestry

  # カテゴリーのバリデーション（仮）
  validates :ancestry, presence: true
end
