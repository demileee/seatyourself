class User < ApplicationRecord
  has_secure_password
  has_many :reservations
  has_many :restaurants

  validates :name, :email, :role, :preference, presence: true
end
