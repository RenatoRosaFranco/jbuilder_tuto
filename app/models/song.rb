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
  belongs_to :album
end
