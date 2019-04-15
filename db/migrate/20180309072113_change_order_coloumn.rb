class ChangeOrderColoumn < ActiveRecord::Migration[5.1]
  def change
  	change_column :orders, :subtotal, 'numeric USING CAST(subtotal AS numeric(12,3))'
  	change_column :orders, :total_discount, 'numeric USING CAST(total_discount AS numeric(12,3))'
  	change_column :orders, :shipping_charges, 'numeric USING CAST(shipping_charges AS numeric(12,3))'
  	change_column :orders, :tax, 'numeric USING CAST(tax AS numeric(12,3))'
  	change_column :orders, :final_payment, 'numeric USING CAST(final_payment AS numeric(12,3))'
  	change_column :order_items, :unit_price, 'numeric USING CAST(unit_price AS numeric(12,3))'
  	change_column :order_items, :total_price, 'numeric USING CAST(total_price AS numeric(12,3))'
  	change_column :products, :product_price, 'numeric USING CAST(product_price AS numeric(12,3))'
  	change_column :products, :discount_price, 'numeric USING CAST(discount_price AS numeric(12,3))'
  end
end
