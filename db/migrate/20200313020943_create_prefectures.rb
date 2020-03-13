class CreatePrefectures < ActiveRecord::Migration[5.2]
  def change
    create_table :prefectures do |t|
      t.bigint :prefecture_id, foreign_key:true
      t.timestamps
    end
  end
end