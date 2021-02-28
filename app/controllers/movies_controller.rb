class MoviesController < ApplicationController
  before_action :require_user_logged_in!

  def index
      @movies = Movie.all.order(:title)
  end
  def edit
      @movie = Movie.find(params[:id])
  end
  def new
    @movie = Movie.new
  end
  def show
    @movie = Movie.find(params[:id])
  end
  def create
    if Movie.create(movie_params)
      redirect_to movies_path, notice: "Movie created sucesfully."
    else
      render :new, notice: "Something went wrong saving the new movie."
    end
  end
  def update
    #raise params.inspect
    @movie = Movie.find(params[:id])
    if @movie.update(movie_params)
      redirect_to movie_path(@movie), notice: "Movie updated sucesfully."
    else
      render :edit, notice: "Something went wrong editing the movie."
    end
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :subtitle, :year, :playtime, :director, :comment, :media)
  end
end
