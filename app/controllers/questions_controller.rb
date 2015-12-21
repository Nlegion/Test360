 class QuestionsController < ApplicationController
  def new
    @question = Question.new
  end

  def create
    @question = Question.new(set_params) 

    if @question.save
      redirect_to @question
    else
      render 'new'
    end
  end

  def show
    @question = Question.find(params[:id])
  end 

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
   
    if @question.update(question_params)
      redirect_to @question
    else
      render 'edit'
    end
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    redirect_to questions_path
  end
end
