class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.references :user, foreign_key:true, type: :integer
      t.references :item, foreign_key:true, type: :integer
      t.text :content, null: false
      t.timestamps
    end
  end
end