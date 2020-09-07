class ListMoviesController < ApplicationController

    def index

        User.
        list_movie = ListMovie.all 

        
        render json: list_movie, include: [:movies]
    end
end
