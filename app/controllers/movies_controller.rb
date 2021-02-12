class MoviesController < ApplicationController
    def index
        movies = Movie.all 
        render json: movies
    end

    def create
        
        user = User.find(params[:id].to_i)
        list = ListMovie.find_or_create_by(category:params["list_movie"])
        
        movie = Movie.new(name:params["name"], picture: params["picture"], 
            rating: params[:rating].to_i, description: params["description"], extra_info: params["extra_info"],
            extra_url: params["extra_url"], list_movie_id: list.id)

        
            
     

         if movie.valid?
            # UserListMovie.create(user_id:user.id, list_movie_id:list.id)
            movie.save
            render json: movie
        else
            render json: {error: "Failed to create the movie"}
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
