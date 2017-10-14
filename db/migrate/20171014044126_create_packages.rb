class CreatePackages < ActiveRecord::Migration
  def change
    create_table :packages do |t|
      t.integer :weight
      t.text :senders_address
      t.text :recievers_address
      t.datetime :pickup_time
      t.datetime :drop_time
      t.decimal :distance
      t.float :price
      t.integer :senders_id
      t.integer :transporters_id
      t.string :recievers_phone_number
      t.string :recievers_email

      t.timestamps null: false
    end
  end
end
