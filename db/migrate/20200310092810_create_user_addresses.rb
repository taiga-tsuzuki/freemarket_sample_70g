class CreateUserAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :user_addresses do |t|
      t.integer :user_zipcode
      t.text :user_address
      t.references :user
      t.timestamps
    end
  end
end
