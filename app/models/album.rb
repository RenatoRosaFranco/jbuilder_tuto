# == Schema Information
#
# Table name: albums
#
#  id           :integer          not null, primary key
#  name         :string
#  release_date :date
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  artist_id    :integer
#
# Indexes
#
#  index_albums_on_artist_id  (artist_id)
#
class Album < ApplicationRecord
  self.table_name  = 'albums'
  self.primary_key = 'id'

  has_many :songs
  belongs_to :artist, optional: false

  def artist_name
    "#{artist.name}"
  end
end
