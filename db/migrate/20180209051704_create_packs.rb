class CreatePacks < ActiveRecord::Migration[5.1]
  def change
    create_table :packs do |t|
      t.string :pack_name

      t.timestamps
    end
  end
end
