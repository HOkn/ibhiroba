class AddCategoriesToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :category1, :boolean
    add_column :questions, :category2, :boolean
    add_column :questions, :category3, :boolean
    add_column :questions, :category4, :boolean
    add_column :questions, :category5, :boolean
    add_column :questions, :category6, :boolean
  end
end
