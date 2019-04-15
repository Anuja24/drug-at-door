class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.text :full_address
      t.string :land_mark
      t.integer :pincode
      t.string :mobile_no
      t.string :city
      t.string :state
      t.references :user, foreign_key: true
      t.references :customer, foreign_key: true
      t.references :address_type, foreign_key: true

      t.timestamps
    end
  end
end
