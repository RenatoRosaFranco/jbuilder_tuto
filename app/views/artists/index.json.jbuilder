# JSON Object

json.key_format! camelize: :lower
json.artists @artists do |artist|
  json.cache! ['v1', artist], expires_in: 1.minutes do
    json.id artist.id
    json.name artist.name
    json.label artist.label
    json.name_with_label name_with_label(artist)

    # Albums
    json.albums artist.albums do |album|
      json.id album.id
      json.name album.name
      json.release_date album.release_date
      
      json.(album, :artist_name)

      # Songs
      json.songs album.songs do |song|
        json.id song.id
        json.id song.name
        json.release_date song.release_date
        json.lyrics song.lyrics
        
        json.(song, :album_name)
        json.(song, :artist_name)
      end
    end
  end
end
