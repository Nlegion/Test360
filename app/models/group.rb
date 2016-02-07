class Group < ActiveRecord::Base
  belongs_to :test
  has_many :questions
  validates :num, uniqueness: { scope: :test_id }
end
