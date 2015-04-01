class Category < ActiveRecord::Base
  has_many :questions, through: :question_categories
  belongs_to :categories

  validates :name, length: { maximum: 40 }
end
