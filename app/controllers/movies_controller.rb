class MoviesController < ApplicationController

    def create
        list_movie = ListMovie.find_by(category: params["existing_list"])
        list_c = ListMovie.create(category:params["list_movie"])
        if list_c.present?
        movie = Movie.new(name:params["name"], picture: params["picture"], 
            rating: params[:rating].to_i, descritpion: params["description"], extra_info: params["extra_info"],
            extra_url: params["extra_url"], list_movie_id: list_c.id)
        else 
            movie = Movie.new(name:params["name"], picture: params["picture"], 
                rating: params[:rating].to_i, descritpion: params["description"], extra_info: params["extra_info"],
                extra_url: params["extra_url"], list_movie_id: list_movie.id)
        end
        byebug
    end 
end

# t.string "name"
# t.string "picture"
# t.integer "rating"
# t.string "description"
# t.string "extra_info"
# t.string "extra_url"
# t.integer "list_movie_id"