class Review < ApplicationRecord
  belongs_to :movie

  validates :user_name, presence: true
  validates :rating, presence: true
  validates :review_text, presence: true
  validates :review_date, presence: true
end
