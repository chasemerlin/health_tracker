class SelfEvaluation < ActiveRecord::Base
  belongs_to :user

  validates :mood_rating, numericality: { greater_than: 0, less_than_or_equal_to: 10 }
  validates :mood_rating, presence: true

  validates :energy_rating, numericality: { greater_than: 0, less_than_or_equal_to: 10 }
end
