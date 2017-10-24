class Reservation < ApplicationRecord
  belongs_to :restaurant

  validates :date_time, :name, :email, :notes, presence: true
end
