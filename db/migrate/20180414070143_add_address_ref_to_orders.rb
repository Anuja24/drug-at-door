class AddAddressRefToOrders < ActiveRecord::Migration[5.1]
  def change
    add_reference :orders, :address, foreign_key: true
    add_column :orders, :order_number, :string
    add_column :orders, :purchased_at, :date
    add_column :orders, :card_holder_name, :string
  end
end
