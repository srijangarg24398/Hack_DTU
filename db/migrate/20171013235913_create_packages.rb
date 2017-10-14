class CreatePackages < ActiveRecord::Migration
  def change
    create_table :packages do |t|
      t.integer :weight
      t.text :senders_address
      t.text :recievers_address
      t.datetime :pickup_time
      t.datetime :drop_time
      t.decimal :distance
      t.float :price,precision: 2
      t.integer :senders_id
      t.integer :recievers_id
      t.integer :transporters_id

      t.timestamps null: false
    end
  end
end
