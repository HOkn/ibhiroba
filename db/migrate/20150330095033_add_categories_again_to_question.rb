class AddCategoriesAgainToQuestion < ActiveRecord::Migration
  def change
    add_column :questions, :category7, :boolean
    add_column :questions, :category8, :boolean
    add_column :questions, :category9, :boolean
    add_column :questions, :category10, :boolean
  end
end
