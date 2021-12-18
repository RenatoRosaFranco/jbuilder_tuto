# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


muse = Artist.create(
 name: 'Muse', 
 label: 'Warner Bros.'
)

black = muse.albums.create(
 name: 'Black Holes and Revelations',
 release_date: '03/07/2006'
)

resistance = muse.albums.create(
 name: 'The Resistance',
 release_date: '11/09/2009'
)

[
  'Take a Bow',
  'Starlight',
  'Supermassive Black Hole',
  'Map of the Problematique',
  'Soldiers Poem',
  'Invencible',
  'Assasin',
  'Exo-Politics',
  'City of Delusion',
  'Hoodoo',
  'Knights of Cydonia'
].each do |song|
  resistance.songs.create(
    name: song,
    release_date: resistance.release_date,
    lyrics: '...'
  )
end

red = Artist.create(
 name: 'Red Hot Chilli Peppers', 
 label: 'EMI'
)

californication = red.albus.create(
 name: 'Californication', 
 release_date: '08/06/1999'
)

[
  'Around the world',
  'Parallel Universe',
  'Scar Tissue',
  'Get on Top',
  'Californication',
  'Easily',
  'Porcelain',
  'Emit Remmus',
  'I Like Dirt',
  'This Velvet Glove',
  'Savior',
  'Purple Stain',
  'Right on Time',
  'Roda Trippin'
].each do |song|
  californication.songs.create(
    name: song,
    release_date: californication.release_date,
    lyrics: '...'
  )
end