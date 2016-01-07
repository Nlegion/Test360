 class QuestionsController < ApplicationController
  before_action :load_test
  before_action :load_question, only: [:edit, :update, :destroy]

  def new
    @question = Question.new
    @num = @test.questions.any? ? @test.questions.maximum(:num) + 1 : 1
  end

  def create
    @question = Question.new(set_params.merge(test_id: @test.id)) 

    if @question.save
      redirect_to new_test_question_path(@test)
    else
      render 'new'
    end
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update   
    if @question.update(set_params)
      redirect_to test_path(@test)
    else
      render 'edit'
    end
  end

  def destroy
    @question.destroy
    redirect_to(:back)
  end

  private

  def load_test
    @test = Test.find(params[:test_id]) 
  end

    def load_question
      @question = Question.find(params[:id])
    end

  def set_params
    params.require(:question).permit(:num, :about, :back, :body)
  end
end
