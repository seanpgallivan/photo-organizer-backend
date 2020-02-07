class CreatePhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :photos do |t|
      t.string :description
      t.string :tags, array: true, default: []
      t.string :people, array: true, default: []
      t.string :location
      t.string :size
      t.datetime :time
      t.string :filename
      t.references :user, null: false, foreign_key: true 

      t.timestamps
    end
  end
end
