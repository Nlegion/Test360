# Answer
class Answer < ActiveRecord::Base
  belongs_to :test
  belongs_to :question
  # validates :question_id, uniqueness: { scope: [:test_id, :user_id]}
end
