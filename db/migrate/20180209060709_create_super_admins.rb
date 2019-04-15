class CreateSuperAdmins < ActiveRecord::Migration[5.1]
  def change
    create_table :super_admins do |t|
      t.string :first_name
      t.string :last_name
      t.string :mobile_no
      t.string :email_id
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
