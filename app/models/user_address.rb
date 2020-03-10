class UserAddress < ApplicationRecord
  belongs_to :user, optional: true
  validates :user_zipcode, :user_address ,presence: true
end
