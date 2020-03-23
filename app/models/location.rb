class Location < ApplicationRecord
  belongs_to :user, optional: true
  validates :family_name, :first_name, :family_name_kana, :first_name_kana, :postal_code, :prefecture, :city, :building_name, :phone_name, presence: true
end