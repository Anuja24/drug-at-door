class CreatePrecRequires < ActiveRecord::Migration[5.1]
  def change
    create_table :prec_requires do |t|
      t.string :name

      t.timestamps
    end
  end
end
