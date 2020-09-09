# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
l = ListMovie.create(category:"test")
m = Movie.create(name:"film test", picture: "https://utellyassets9-1.imgix.net/api/Images/bcd3212f6751caabb64a3caf28def76e/Redirect", 
    rating: 4, description: "yep", extra_info: "yep",
    extra_url: "yep", list_movie: l)

    UserListMovie.create(user:User.find(1),list_movie:l)

    # e  =ListMovie.create(category:"Manga")
    # t = ListMovie.create(category:"Horror")
    # d = ListMovie.create(category:"Action")
    # z = ListMovie.create(category:"Drama")


    # UserListMovie.create(user:User.find(1),list_movie:e)
    # UserListMovie.create(user:User.find(1),list_movie:t)
    # UserListMovie.create(user:User.find(1),list_movie:d)
    # UserListMovie.create(user:User.find(1),list_movie:z)