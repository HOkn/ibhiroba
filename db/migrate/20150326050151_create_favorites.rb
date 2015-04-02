class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.integer :user_id
      t.integer :question_id
      t.integer :answer_id

      t.timestamps null: false

      t.index :user_id
      t.index :question_id
      t.index :answer_id
      t.index :created_at
    end
  end
end
