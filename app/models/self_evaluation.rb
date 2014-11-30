class SelfEvaluation < ActiveRecord::Base
  belongs_to :user

  validates :rating, numericality: { greater_than: 0, less_than_or_equal_to: 10 }
  validates :rating, presence: true
end
