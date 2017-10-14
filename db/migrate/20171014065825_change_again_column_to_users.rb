class ChangeAgainColumnToUsers < ActiveRecord::Migration
  def change
  		change_column :users, :phone_number, :string
  		change_column :users , :Last_Name , :string
  end
end
