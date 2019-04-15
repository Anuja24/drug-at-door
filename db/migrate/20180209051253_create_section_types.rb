class CreateSectionTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :section_types do |t|
      t.string :section_type_name
      t.string :section_type_description

      t.timestamps
    end
  end
end
