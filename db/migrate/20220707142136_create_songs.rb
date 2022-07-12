class CreateSongs < ActiveRecord::Migration[6.1]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :duration
      t.datetime :released
      t.references :artist, null: false, foreign_key: true
      t.references :album, null: false, foreign_key: true
      t.references :genre, null: false, foreign_key: true
      

      t.timestamps
    end
  end
end
