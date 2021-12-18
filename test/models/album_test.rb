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
require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
