class Restaurant < ApplicationRecord
  has_many :reservations
  has_many :users, through: :reservations

  validates :name, :address, :description, presence: true
end
