class Category < ActiveRecord::Base
  belongs_to :questions, through: :question_category
  belongs_to :categories
end
