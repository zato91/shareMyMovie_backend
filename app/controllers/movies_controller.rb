class MoviesController < ApplicationController
    def index
        movies = Movie.all 
        render json: movies
    end

    def create
        list_movie = ListMovie.find_by(category: params["existing_list"])
        user = User.find(params[:id].to_i)
        list_c = ListMovie.create(category:params["list_movie"])
        if list_c.present?
        movie = Movie.new(name:params["name"], picture: params["picture"], 
            rating: params[:rating].to_i, description: params["description"], extra_info: params["extra_info"],
            extra_url: params["extra_url"], list_movie_id: list_c.id)
            join = list_movie.user_list_movies.build(user_id:user.id, list_movie_id:list_movie.id)
            join.save
        else 
        
         list_movie.present?
            movie = Movie.new(name:params["name"], picture: params["picture"], 
                rating: params[:rating].to_i, description: params["description"], extra_info: params["extra_info"],
                extra_url: params["extra_url"], list_movie_id: list_movie.id)
         end

         if movie.valid?
            movie.save
            render json: movie
        else
            render json: {error: "Failed to create the user"}
         end
        
    end 


    def destroy
        
        movie = Movie.find(params[:id])
        movie.destroy
        
    end
end

private 

def movie_params
    params.require(:movies).permit(:name, :picture, :description, :extra_info, :extra_url, :list_movie_id)
  
end
