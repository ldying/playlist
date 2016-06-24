rails g model User first_name:string last_name:string email:string password:digest
rails g model Song artist:string title:string
rails g model Playlist user:references song:references

User.create(first_name:"bob", last_name:"nin", email:"bob@bob.com", password:"password")
User.create(first_name:"joim", last_name:"asdf", email:"jim@jim.com", password:"password")

Song.create(artist:"Blank", title:"Banshee")
Song.create(artist:"gfhgfdh", title:"ewewr")

Playlist.create(user: User.first, song: Song.first)
Playlist.create(user: User.first, song: Song.first)
Playlist.create(user: User.second, song: Song.second)

