class Restaurant < ApplicationRecord
  has_many :reservations

  validates :name, :address, :description, presence: true
end
