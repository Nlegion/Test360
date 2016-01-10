# AnswersController
class AnswersController < ApplicationController
  before_action :authenticate_user!, :load_test, :load_questions

  def get_answ
    answer = Answer.where(user_id: @user.id, test_id: @test.id).last
    @try_of = answer.try(:try_of).to_i + 1
  end

  def post_answ

    @questions.each do |q|
      Answer.create(name: params[q.id.to_s], question_id: q.id, test_id: @test.id, user_id: @user.id, try_of: params[:try_of]) if params[q.id.to_s].present?
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

end
