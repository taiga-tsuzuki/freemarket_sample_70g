class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates
  has_many :items, dependent: :destroy
  has_many :comments
  has_one :profile
  has_one :credit_card
  has_one :location
  has_one :user_address
end
