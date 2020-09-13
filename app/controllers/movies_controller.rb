class MoviesController < ApplicationController

    def index
        @movies = Movie.all.order(:title)
    end
    def edit
        @movie = Movie.find(params[:id])
    end
    def show
    	@movie = Movie.find(params[:id])
    end
end
