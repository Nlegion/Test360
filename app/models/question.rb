# Question
class Question < ActiveRecord::Base
  belongs_to :test
  belongs_to :group
  has_many :answers
  validates :num, uniqueness: { scope: :test_id }
end
