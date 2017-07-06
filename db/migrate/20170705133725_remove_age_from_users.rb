class RemoveAgeFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :age
    add_column :users, :date_of_birth, :string
    add_column :users, :blood_group, :string
  end
end
