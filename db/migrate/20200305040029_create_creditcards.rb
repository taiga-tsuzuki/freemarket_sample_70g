class CreateCreditcards < ActiveRecord::Migration[5.2]
  def change
    create_table :creditcards do |t|
      t.bigint :user_id, foreign_key:true
      t.integer :number, null: false
      t.integer :cvc, null: false
      t.integer :exp_year, null: false
      t.integer :exp_month, null: false
      t.integer :amount, null: false
      t.bigint :card_id, foreign_key:true
      t.integer :currency, null: false
      t.timestamps
    end
  end
end
