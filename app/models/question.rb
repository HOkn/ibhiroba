class Question < ActiveRecord::Base
  has_many :answers
  has_many :favorites, dependent: :destroy
  belongs_to :users

  validates :title, presence: true, length: { minimum: 3 }
  validates :content, presence: true, length: { in: 3..2000 }

  def favorited_by?(user, question)
    favorites.where(user_id: user.id).exists?
  end

end
