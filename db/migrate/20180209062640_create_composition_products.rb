class CreateCompositionProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :composition_products do |t|
      t.references :composition, foreign_key: true
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
