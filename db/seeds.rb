Genre.delete_all
Song.delete_all
Album.delete_all
Artist.delete_all
User.delete_all
Mixtape.delete_all

g1 = Genre.create(:name => 'Classical')
g2 = Genre.create(:name => 'Rock')
g3 = Genre.create(:name => 'Top 40')

s1 = Song.create(:name => 'Thriller')
s2 = Song.create(:name => 'Billie Jean')
s3 = Song.create(:name => 'Smells Like Teen Spirit')

a1 = Album.create(:name => 'Thriller')
a2 = Album.create(:name => 'Nevermind')
a3 = Album.create(:name => 'The White Album')

r1 = Artist.create(:name => 'Michael Jackson')
r2 = Artist.create(:name => 'Nirvana')
r3 = Artist.create(:name => 'Beatles')

u1 = User.create(:name => 'Bob', :image => 'http://www.sovereigngracemusic.org/ArtistPics/BobKauflin.jpeg.ashx?width=290', :password => 'abc', :balance => 50.00 )
u2 = User.create(:name => 'Sam', :image => 'http://www.gmri.org/upload/images/Sam.jpg', :password => 'abc', :balance => 80.25)
u3 = User.create(:name => 'Jill', :image => 'http://www.mcguirewoods.com/~/media/Images/People/G/Griset_Jill%20Crawley.ashx?mw=200&mh=200', :password => 'abc', :balance => 55.00 )
u4 = User.create(:name => 'Admin', :image => 'http://images.all-free-download.com/images/graphicmedium/penguin_admin_143950.jpg', :password => 'abc', :balance => 980.00)
u4.is_admin = true
u4.save


m1 = Mixtape.create(:name => 'Easy Listening')
m2 = Mixtape.create(:name => 'Workout Music')
m3 = Mixtape.create(:name => 'Old School')

#note that there are no explicit save below
r1.songs << s1 << s2
r2.songs = [s3]
a1.songs = [s1, s2]
a2.songs << s3
g3.songs = [s1, s2, s3]
u1.mixtapes = [m1, m2]
u3.mixtapes = [m3]
m3.songs = [s1, s2, s3]
u1.albums = [a1, a2]