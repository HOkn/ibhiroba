class AnswersController < ApplicationController

  def create
    @user = current_user
    @question = Question.find(params[:question_id])
    @answer = @question.answers.create(answer_params)
    @answer.user_id = @user.id
    redirect_to user_question_path(@user, @question)
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
    @user = current_user
    @question = Question.find(params[:question_id])
    @answer = @question.answers.find(params[:id])
    if @answer.update_attributes(answer_params)
      redirect_to user_question_path(@user, @question)
    else
      render 'edit'
    end
  end

  private
    def answer_params
      params.require(:answer).permit(:content)
    end
end