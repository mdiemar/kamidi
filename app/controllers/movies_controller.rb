class MoviesController < ApplicationController
  before_action :require_user_logged_in!

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
