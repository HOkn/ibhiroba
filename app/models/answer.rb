class Answer < ActiveRecord::Base
  belongs_to :question
  validates :content, presence: true, length: { in: 5..1000 }
end
