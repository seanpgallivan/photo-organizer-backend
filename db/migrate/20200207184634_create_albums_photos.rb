class CreateAlbumsPhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :albums_photos do |t|
      t.references :album, null: false, foreign_key: true
      t.references :photo, null: false, foreign_key: true

      t.timestamps
    end
  end
end
