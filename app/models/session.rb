class Session < ApplicationRecord
  belongs_to :movie

  validates :movie, presence: true
  validates :hall_number, presence: true
  validates :start_date, presence: true
  validates :start_time, presence: true
end
