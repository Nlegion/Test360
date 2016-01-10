class ResultsController < ApplicationController

  before_action :authenticate_user!, :load_test, :load_questions
 
  def index
    @results = Answer.where(test_id: @test.id, user_id: @user.id)
  end 

  private

  def load_test
    @test = Test.find(params[:test_id])
  end

  def load_questions
    @questions = @test.questions
  end
end
