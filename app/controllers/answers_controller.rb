class AnswersController < ApplicationController
  def create
    @question = Question.find(params[:question_id])
    @answer = @question.answers.create(answer_params)
    redirect_to question_path(@question)
  end

  def index
    @question = Question.find(params[:question_id])
    @answer = @question.answers.all
  end

  def edit
    @question = Question.find(params[:question_id])
    @answer = @question.answers.find(params[:id])
  end

  def update
    @question = Question.find(params[:question_id])
    @answer = @question.answers.find(params[:id])
    if @answer.update_attributes(answer_params)
      redirect_to question_path(@question)
    else
      render 'edit'
    end
  end

  private
    def answer_params
      params.require(:answer).permit(:content)
    end
end