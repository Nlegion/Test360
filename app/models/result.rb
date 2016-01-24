# Result
class Result < ActiveRecord::Base
  belongs_to :test
  belongs_to :answer
  belongs_to :user
end
