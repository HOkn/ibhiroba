class FavoritesController < ApplicationController
  before_filter :require_login

  def create
    @question = Question.find(params[:question_id])
    @favorite = current_user.favorites.build(question_id: @question.id)
    if @favorite.save
      redirect_to question_path(@question), notice: "お気に入りに追加しました"
    else
      redirect_to question_path(@question), alert: "この質問はお気に入りに登録できません"
    end
  end

  def destroy
    @favorite = current_user.favorites.find_by!(question_id: params[:question_id])
    @favorite.destroy
    redirect_to questions_url, notice: "お気に入りを解除しました"
  end
end