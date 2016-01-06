# AnswersController
class AnswersController < ApplicationController
  before_action :load_test
  
  def index
    @answers = Answer.where(test_id: @tes)
  end

  private

  def load_test
    @test = Test.find(params[:test_id])
  end
end
