# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ActiveRecord::Base.transaction do

User.destroy_all
Artwork.destroy_all
ArtworkShare.destroy_all

users1 = User.create(username: 'Link')
users2 = User.create(username: 'Ganandorf')

art1 = Artwork.create(title: 'art1', image_url: 'google.com/art1', artist_id: users1.id)
art2 = Artwork.create(title: 'art2', image_url: 'google.com/art2', artist_id: users2.id)

art_share_1 = ArtworkShare.create(artwork_id: art1.id, viewer_id: users2.id)
art_share_2 = ArtworkShare.create(artwork_id: art2.id, viewer_id: users1.id)

end
