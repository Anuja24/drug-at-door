class CreateSections < ActiveRecord::Migration[5.1]
  def change
    create_table :sections do |t|
      t.string :section_name
      t.string :section_description
      t.references :section_type, foreign_key: true

      t.timestamps
    end
  end
end
