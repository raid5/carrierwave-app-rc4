class CreatePostPhotos < ActiveRecord::Migration
  def change
    create_table :post_photos do |t|
      t.string :photo
      t.references :post

      t.timestamps
    end
    add_index :post_photos, :post_id
  end
end
