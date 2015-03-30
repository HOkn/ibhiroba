class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
    @question = Question.includes(:answers).find(params[:id])
    @answer = Answer.new
  end

  def new
    @question = Question.new
  end

  def create
    @user = current_user
    @question = Question.new(question_params)
    @question.user_id = @user.id
    if @question.save
      redirect_to user_question_path(@user, @question)
    else
      render 'new'
    end
  end

  def edit
    @user = current_user
    @question = Question.find(params[:id])
  end


  def update
    @user = current_user
    @question = Question.find(params[:id])
    if @question.update_attributes(question_params)
      @question.save
      redirect_to user_question_path(@user, @question)
    else
      render 'edit'
    end
  end

  private

  def question_params
    params.require(:question).permit(:title, :content, :category1, :category2, :category3, :category4, :category5, :category6, :category7, :category8, :category9)
  end

end
