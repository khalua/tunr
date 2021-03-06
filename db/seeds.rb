Genre.delete_all
Song.delete_all
Album.delete_all
Artist.delete_all
User.delete_all
Mixtape.delete_all

g1 = Genre.create(:name => 'Classical')
g2 = Genre.create(:name => 'Rock')
g3 = Genre.create(:name => 'Top 40')
g4 = Genre.create(:name => 'Classic rock')
g5 = Genre.create(:name => 'Alternative')

s1 = Song.create(:name => 'Thriller', :filename => 'MichaelJackson_thriller.mp3', :cost => 2)
s2 = Song.create(:name => 'Billie Jean', :filename => 'MichaelJackson_billie_jean.mp3', :cost => 5)
s3 = Song.create(:name => 'Smells Like Teen Spirit', :filename => 'Nirvana_smells_like_teen_spirit.mp3', :cost => 3)
s4 = Song.create(:name => 'Ticket to Ride', :filename => 'TheBeatles_ticket_to_ride.mp3', :cost => 10)
s5 = Song.create(:name => 'Higher Ground', :filename => 'RedHotChiliPeppers_higher_ground.mp3', :cost => 2)
s6 = Song.create(:name => 'Alive', :filename => 'PearlJam_alive.mp3', :cost => 4.50)
s7 = Song.create(:name => 'Evenflow - Live', :filename => 'PearlJam_evenflow.mp3', :cost => 6)


s8 = Song.create(:name => 'Everything in its Right Place', :filename => 'Radiohead_everything_in_its_right_place.mp3', :cost => 0.99)
s9 = Song.create(:name => 'How to Disappear Completely', :filename => 'Radiohead_how_to_disappear_completely.mp3', :cost => 0.99)
s10 = Song.create(:name => 'Idioteque', :filename => 'Radiohead_idioteque.mp3', :cost => 0.99)
s11 = Song.create(:name => 'In Limbo', :filename => 'Radiohead_in_limbo.mp3', :cost => 0.99)
s12 = Song.create(:name => 'Kid A', :filename => 'Radiohead_kid_a.mp3', :cost => 0.99)
s13 = Song.create(:name => 'Morning Bell', :filename => 'Radiohead_morning_bell.mp3', :cost => 0.99)
s14 = Song.create(:name => 'Motion Picture Soundtrack', :filename => 'Radiohead_motion_picture_soundtrack.mp3', :cost => 0.99)
s15 = Song.create(:name => 'Optimistic', :filename => 'Radiohead_optimistic.mp3', :cost => 0.99)
s16 = Song.create(:name => 'The National Anthem', :filename => 'Radiohead_the_national_anthem.mp3', :cost => 0.99)
s17 = Song.create(:name => 'Treefingers', :filename => 'Radiohead_treefingers.mp3', :cost => 0.99)
s18 = Song.create(:name => 'Lotus Flower', :filename => 'Radiohead_lotus_flower.mp3', :cost => 0.99)



a1 = Album.create(:name => 'Thriller', :image => 'http://niceheart.files.wordpress.com/2007/06/thriller.jpg?w=535')
a2 = Album.create(:name => 'Nevermind', :image => 'http://rockhall.com/media/assets/blog_posts/nirvana-nevermind.jpg')
a3 = Album.create(:name => 'The White Album', :image => 'http://1.bp.blogspot.com/_3cGepgvcsuo/SSiwb3sPd8I/AAAAAAAAAwI/mXrjbFOoidQ/s200/WHITE+ALBUM.jpg')
a4 = Album.create(:name => 'Help!', :image => 'http://24.media.tumblr.com/tumblr_mb8a5bCORj1rrgq3yo1_cover.jpg')
a5 = Album.create(:name => 'Mothers Milk', :image => 'http://hitparade.ch/cdimag/red_hot_chili_peppers-mothers_milk_a.jpg')
a6 = Album.create(:name => 'Ten', :image => 'http://i43.tower.com/images/mm106055995/ten-pearl-jam-cd-cover-art.jpg')
a7 = Album.create(:name => 'Pearl Jam Live', :image => 'http://static.gigwise.com/artists/Image/200Eddie-PearlJam11.jpg')
a8 = Album.create(:name => 'Kid A', :image => 'http://www.sputnikmusic.com/images/albums/226.jpg')
a9 = Album.create(:name => 'King of Limbs', :image => 'http://www.billboard.com/images/album_images/cov200/pop/cov200/drp700/p710/p71074cbfe4.jpg')


r1 = Artist.create(:name => 'Michael Jackson', :image => 'http://static.gigwise.com/artists/Image/200michael-history18.jpg')
r2 = Artist.create(:name => 'Nirvana', :image => 'http://images.artistdirect.com/Images/artd/amg/music/bio/473656_nirvana2004_200x200.jpg')
r3 = Artist.create(:name => 'The Beatles', :image => 'http://writingfix.com/images/IPOD/beatles.jpg')
r4 = Artist.create(:name => 'The Red Hot Chili Peppers', :image => 'http://web-images.chacha.com/red-hot-chili-peppers/red-hot-chili-peppers-oct-13-2010-200.jpg')
r5 = Artist.create(:name => 'Pearl Jam', :image => 'http://images3.backpage.com/imager/u/medium/75988336/Pearl_Jam.jpg')
r6 = Artist.create(:name => 'Radiohead', :image => 'http://static.gigwise.com/artists/Image/radiohead_200.jpg')



u1 = User.create(:name => 'Bob', :image => 'http://www.sovereigngracemusic.org/ArtistPics/BobKauflin.jpeg.ashx?width=290', :password => 'abc', :balance => 50.00 )
u2 = User.create(:name => 'Sam', :image => 'http://www.gmri.org/upload/images/Sam.jpg', :password => 'abc', :balance => 80.25)
u3 = User.create(:name => 'Jill', :image => 'http://www.mcguirewoods.com/~/media/Images/People/G/Griset_Jill%20Crawley.ashx?mw=200&mh=200', :password => 'abc', :balance => 0.25 )
u4 = User.create(:name => 'Admin', :image => 'http://images.all-free-download.com/images/graphicmedium/penguin_admin_143950.jpg', :password => 'abc', :balance => 980.00)
u4.is_admin = true
u4.save


m1 = Mixtape.create(:name => 'Easy Listening')
m2 = Mixtape.create(:name => 'Workout Music')
m3 = Mixtape.create(:name => 'Old School')

#note that there are no explicit save below

#artists have songs
r1.songs << s1 << s2
r2.songs = [s3]
r3.songs << s4
r4.songs << s5
r5.songs << s6 << s7
r6.songs = [s8, s9, s10, s11, s12, s13, s14, s15, s16, s17, s18]

#albums have songs #sooooo, albums have artists, and artists have albums
a1.songs = [s1, s2]
a2.songs << s3
a4.songs << s4
a5.songs << s5
a6.songs << s6
a7.songs << s7
a8.songs = [s8, s9, s10, s11, s12, s13, s14, s15, s16, s17]
a9.songs << s18

#genres have songs
g3.songs = [s1, s2, s3]
g4.songs << s4
g2.songs = [s4, s5, s6, s7]
g5.songs = [s8, s9, s10, s11, s12, s13, s14, s15, s16, s17, s18]

#users have mixtapes
u1.mixtapes = [m1, m2]
u3.mixtapes = [m3]

#mixtapes have songs
m1.songs = [s1, s2, s3]

#users have albums
u1.albums = [a1, a2]