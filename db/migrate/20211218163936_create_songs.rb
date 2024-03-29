class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :name
      t.date :release_date
      t.string :lyrics
      t.references :album, foreign_key: true

      t.timestamps
    end
  end
end
