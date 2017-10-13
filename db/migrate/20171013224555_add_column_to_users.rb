class AddColumnToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :First_Name, :string
  	add_column :users, :Last_Name, :string
  	add_column :users, :phone_number, :string
  end
end
