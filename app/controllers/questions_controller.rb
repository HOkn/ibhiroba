class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end


  def show
    @user = current_user
    @question = Question.find(params[:id])
    @question = Question.includes(:answers).find(params[:id])
    @answer = Answer.new
  end


  def new
    @question = Question.new
    @categories = Category.all
  end


  def create
    @user=current_user
    @question = Question.new(question_params)
    @category = Category.find(params[:category][:id])

    if @question.save & @question.categories << @category
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


  # def index_category
  #   @questions = Question.all
  #   @questioncategory = QuestionCategory.all
  #   @question_id = @questioncategory.question_id

  #   @question = Question.where(@question_id: 1)
  # end


  private
  def question_params
    params.require(:question).permit(:title, :content, categories_attributes: [:id])
  end

end
