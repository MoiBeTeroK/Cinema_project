class Movie < ApplicationRecord
  validates :title, presence: true
  validates :duration, presence: true
  validates :age_rating, presence: true
  validates :release_date, presence: true
end
