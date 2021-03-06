class AddAttachmentPhotoToProducts < ActiveRecord::Migration[5.1]
  def self.up
    change_table :products do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :products, :photo
  end
end
