class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :product_name
      t.float :product_price
      t.string :product_unit
      t.text :product_information
      t.references :section_type, foreign_key: true
      t.references :section, foreign_key: true
      t.references :company, foreign_key: true
      t.references :product_form, foreign_key: true
      t.references :pack, foreign_key: true
      t.references :discount, foreign_key: true
      t.references :available, foreign_key: true
      t.references :prec_require, foreign_key: true

      t.timestamps
    end
  end
end
