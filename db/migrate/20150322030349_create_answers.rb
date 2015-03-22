class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text :content
      t.integer :like
      t.integer :fav
      t.references :question, index: true

      t.timestamps null: false
    end
    add_foreign_key :answers, :questions
  end
end
