class AddScreenNameAndResidencenowAndOriginAndStatusAndMailmagazineAndSchoolandBioToUsers < ActiveRecord::Migration
  def change
    add_column :users, :screen_name, :string
    add_column :users, :residencenow, :string
    add_column :users, :origin, :string
    add_column :users, :status, :string
    add_column :users, :mailmagazine, :boolean
    add_column :users, :school, :string
    add_column :users, :bio, :text
  end
end
