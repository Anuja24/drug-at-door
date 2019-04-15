class CreateProductForms < ActiveRecord::Migration[5.1]
  def change
    create_table :product_forms do |t|
      t.string :form_name
      t.string :form_description

      t.timestamps
    end
  end
end
