class CreateCreditcards < ActiveRecord::Migration[5.2]
  def change
    create_table :creditcards do |t|
      t.references :user, null: false, foreign_key:true
      t.integer :number, null: false
      t.integer :cvc, null: false
      t.integer :exp_year, null: false
      t.integer :exp_month, null: false
      r.integer :amount, null: false
      t.references :card, null: false
      t.integer :currency, null: false
      t.timestamps
    end
  end
end
