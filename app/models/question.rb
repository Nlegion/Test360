class Question < ActiveRecord::Base
  belongs_to :test
  has_many :answers
  validates :num, uniqueness: true
end
