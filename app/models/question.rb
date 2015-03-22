class Question < ActiveRecord::Base
  has_many :answers
  validates :title, presence: true, length: { minimum: 3 }
  validates :content, presence: true, length: { in: 3..25 }
end
