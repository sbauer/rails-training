class MoviesController < ApplicationController
  def index
    movies = Movie.all

    render locals: { movies: movies }
  end

  def show
    movie = Movie.find(params[:id])

    render locals: { movie: movie }
  end
end
