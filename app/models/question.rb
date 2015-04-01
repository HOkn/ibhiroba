class Question < ActiveRecord::Base
  belongs_to :users
  has_many :answers, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :categories, through: :question_category

  def favorited_by?(user, question)
    Favorite.where(user_id: user.id).exists?
  end
end
