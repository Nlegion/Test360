class Question < ActiveRecord::Base
  belongs_to :test
  has_many :answers
  validates :num, uniqueness: {scope: :test_id}
end
