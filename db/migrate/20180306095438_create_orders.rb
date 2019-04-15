class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.decimal :subtotal
      t.decimal :total_discount
      t.string :shipping_charges
      t.decimal :tax
      t.decimal :final_payment
      t.references :order_status, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
