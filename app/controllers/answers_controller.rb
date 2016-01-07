# AnswersController
class AnswersController < ApplicationController
  before_action :load_test, :load_questions

  def get_answ
  end

  def post_answ
    @questions.each do |q|
      Answer.create(name: params[q.id.to_s], question_id: q.id, test_id: @test.id) if params[q.id.to_s].present?
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
