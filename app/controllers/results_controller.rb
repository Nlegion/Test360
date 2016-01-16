class ResultsController < ApplicationController

  before_action :authenticate_user!, :load_test, :load_questions, :load_answers
 
  def index
    @try_of = @answers.maximum(:try_of) || 0
    @last_answers = @answers.where(try_of: @try_of)
  end 

  private

  def load_test
    @test = Test.find(params[:test_id])
  end

  def load_questions
    @questions = @test.questions
  end

  def load_answers
    @answers = @test.answers.where(user_id: @user.id)
  end
end
