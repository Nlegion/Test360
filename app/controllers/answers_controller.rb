# AnswersController
class AnswersController < ApplicationController
  before_action :authenticate_user!, :load_test, :load_questions

  def new_answer
    answer = Answer.where(user_id: @user.id, test_id: @test.id).last
    @try_of = answer.try(:try_of).to_i + 1
  end

  def save_answers
    @questions.each do |q|
      Answer.create(answer_hash(q)) if params[q.id.to_s].present?
    end
    redirect_to test_path(@test)
  end

  private

  def load_test
    @test = Test.find(params[:test_id])
  end

  def load_questions
    @questions = @test.questions.order("RANDOM()")
  end

  def answer_hash(q)
    { name: params[q.id.to_s], question_id: q.id, test_id: @test.id, user_id: @user.id, try_of: params[:try_of] }
  end
end
