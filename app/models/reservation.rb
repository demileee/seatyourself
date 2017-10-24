class Reservation < ApplicationRecord
  belongs_to :restaurant
  belongs_to :user

  validates :date_time, :name, :email, :notes, presence: true
end
