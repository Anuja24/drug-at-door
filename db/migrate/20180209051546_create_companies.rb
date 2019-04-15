class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :company_name
      t.string :company_description
      t.references :section, foreign_key: true

      t.timestamps
    end
  end
end
