class AddSomecolumnsToUsers < ActiveRecord::Migration[5.2]
  def up
    add_column :users, :user_family_name, :string, null: false
    add_column :users, :user_first_name, :string, null: false
    add_column :users, :user_family_name_kana, :string, null: false
    add_column :users, :user_first_name_kana, :string, null: false
    add_column :users, :birthday, :date, null: false
  end
end