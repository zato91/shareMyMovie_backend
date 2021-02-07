class ListMoviesController < ApplicationController

    def index  
        list_movie = ListMovie.all 
        render json: list_movie, include: [:movies]
    end

    def destroy
        
        lsit_movie = ListMovie.find(params[:id])
        lsit_movie.movies.destroy_all
        lsit_movie.destroy
        
    end
end
