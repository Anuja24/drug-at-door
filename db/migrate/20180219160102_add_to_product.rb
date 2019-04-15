class AddToProduct < ActiveRecord::Migration[5.1]
  def change
  	add_column :products, :unit_qty, :string
  end
end
