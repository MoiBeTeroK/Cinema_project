class Movie < ApplicationRecord
  has_many :sessions, dependent: :destroy
  has_many :reviews, dependent: :destroy
  
  validates :title, presence: true
  validates :duration, presence: true
  validates :age_rating, presence: true, format: { with: /\A\d{1,2}\+\z/}
  validates :release_date, presence: true
end
