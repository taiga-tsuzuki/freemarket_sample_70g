class CreateCreditcards < ActiveRecord::Migration[5.2]
  def change
    create_table :creditcards do |t|
      t.references :user, foreign_key:true, type: :integer
      t.integer :number, null: false
      t.integer :cvc, null: false
      t.integer :exp_year, null: false
      t.integer :exp_month, null: false
      r.integer :amount, null: false
      t.references :card, foreign_key:true, type: :integer
      t.integer :currency, null: false
      t.timestamps
    end
  end
end
