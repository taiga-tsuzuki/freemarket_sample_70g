class DropUserAddressTable < ActiveRecord::Migration[5.2]
  def change
    drop_table:user_addresses   
  end
end

