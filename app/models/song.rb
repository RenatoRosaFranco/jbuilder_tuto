# == Schema Information
#
# Table name: songs
#
#  id           :integer          not null, primary key
#  lyrics       :string
#  name         :string
#  release_date :date
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  album_id     :integer
#
# Indexes
#
#  index_songs_on_album_id  (album_id)
#
class Song < ApplicationRecord
  self.table_name  = 'songs'
  self.primary_key = 'id'

  belongs_to :album

  def album_name
    "#{album.name}"
  end

  def artist_name
    "#{album.artist.name}"
  end
end
