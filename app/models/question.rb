class Question < ActiveRecord::Base
  has_many :answers
  has_many :favorites, dependent: :destroy



  validates :title, presence: true, length: { minimum: 3 }
  validates :content, presence: true, length: { in: 3..25 }

  def favorited_by? user
    favorites.where(user_id: user.id).exists?
  end

end
