class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.references :user, foreign_key:true, type: :integer
      t.references :category, foreign_key:true, type: :integer
      t.references :brand, foreign_key:true, type: :integer
      t.string :item_name, null: false
      t.text :description, null: false
      t.string :price, null: false
      t.string :size
      t.string :condition, null: false
      t.string :shipping_fee_payer, null: false
      t.string :shipping_location, null: false
      t.string :shipping_days, null: false
      t.timestamps
    end
  end
end
