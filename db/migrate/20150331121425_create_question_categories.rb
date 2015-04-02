class CreateQuestionCategories < ActiveRecord::Migration
  def change
    create_table :question_categories do |t|
      t.integer :question_id
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
