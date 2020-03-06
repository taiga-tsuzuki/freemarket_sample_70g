class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.bigint :user_id, foreign_key:true
      t.bigint :category_id, foreign_key:true
      t.bigint :brand_id, foreign_key:true
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
