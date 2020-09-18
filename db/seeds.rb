# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
l = ListMovie.create(category:"Romance")
# m = Movie.create(name:"film test", picture: "https://utellyassets9-1.imgix.net/api/Images/bcd3212f6751caabb64a3caf28def76e/Redirect", 
#     rating: 4, description: "yep", extra_info: "yep",
#     extra_url: "yep", list_movie: l)

    UserListMovie.create(user:User.find(1),list_movie:l)

    # e  =ListMovie.create(category:"Manga")
    # t = ListMovie.create(category:"Horror")
    # d = ListMovie.create(category:"Action")
    # z = ListMovie.create(category:"Drama")


    # UserListMovie.create(user:User.find(1),list_movie:e)
    # UserListMovie.create(user:User.find(1),list_movie:t)
    # UserListMovie.create(user:User.find(1),list_movie:d)
    # UserListMovie.create(user:User.find(1),list_movie:z)

    # User.create(username:"franck123",password:'123')
    # User.create(username:"franck2020",password:'123')
    # User.create(username:"franck@franck",password:'123')
    # User.create(username:"franck_2020",password:'123')
    # User.create(username:"marc",password:'123')
    # User.create(username:"paul",password:'123')
    # User.create(username:"chris",password:'123')
    # User.create(username:"kevin",password:'123')
    # User.create(username:"loulou",password:'123')
    # User.create(username:"patato",password:'123')
    # User.create(username:"tiger",password:'123')
    # User.create(username:"wolf",password:'123')
    # User.create(username:"adriano",password:'123')
    # User.create(username:"ak",password:'123')
    # User.create(username:"zanata",password:'123')
    # User.create(username:"zaliski",password:'123')
    # User.create(username:"creepy_guy",password:'123')
    # User.create(username:"patato22",password:'123')
    # User.create(username:"patato4123",password:'123')
