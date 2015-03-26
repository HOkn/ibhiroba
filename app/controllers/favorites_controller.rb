class FavoritesController < ApplicationController
  before_filter :require_login

  def create
    @question = Question.find(params[:question_id])
    @favorite = current_user.favorites.build(question: @question)
    if @favorite.save
      redirect_to question_url, notice: "お気に入りに追加しました"
    else
      redirect_to question_url, alert: "この質問はお気に入りに登録できません"
    end
  end
end