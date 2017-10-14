class ChangeUsers < ActiveRecord::Migration
  def change
  	change_column :users, :phone_number, :string , null: true
  		change_column :users , :Last_Name , :string, null: true
  end
end
