class AddResidenceCountryAndCommentToUsers < ActiveRecord::Migration
  def change
    add_column :users, :residence_country, :string
    add_column :users, :comment, :text
  end
end
