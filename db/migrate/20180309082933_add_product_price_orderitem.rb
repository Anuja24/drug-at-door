class AddProductPriceOrderitem < ActiveRecord::Migration[5.1]
  def change
  	add_column :order_items, :item_price, :decimal,precision: 12, scale: 3
  end
end