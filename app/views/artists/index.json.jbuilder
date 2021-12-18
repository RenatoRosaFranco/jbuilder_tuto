json.artists @artists do |artist|
  json.id artist.id
  json.name artist.name
  json.label artist.label
  json.(artist, :name_with_label)
end