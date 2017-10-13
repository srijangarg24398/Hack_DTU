class ChangeAnotherColumnToUsers < ActiveRecord::Migration
  def change
  	change_column :users, :First_Name, :string, null: false
  	change_column :users, :Last_Name, :string, null: false
  end
end
