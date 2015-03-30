class Answer < ActiveRecord::Base
  belongs_to :question
  belongs_to :user
  validates :content, presence: true, length: { in: 5..1000 }

  def favorited_by? user
    favorites.where(user_id: user.id).exists?
  end
end
