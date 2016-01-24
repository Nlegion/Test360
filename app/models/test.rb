# Test
class Test < ActiveRecord::Base
   has_many :questions
   has_many :answers
   has_many :results
   has_many :groups
end
