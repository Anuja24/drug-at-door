class CreateAvailables < ActiveRecord::Migration[5.1]
  def change
    create_table :availables do |t|
      t.string :available_name

      t.timestamps
    end
  end
end
