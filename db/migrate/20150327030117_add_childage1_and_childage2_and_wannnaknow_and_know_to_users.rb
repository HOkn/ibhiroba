class AddChildage1AndChildage2AndWannnaknowAndKnowToUsers < ActiveRecord::Migration
  def change
    add_column :users, :child_age1, :integer
    add_column :users, :child_age2, :integer
    add_column :users, :wannaknow, :text
    add_column :users, :know, :text
  end
end
