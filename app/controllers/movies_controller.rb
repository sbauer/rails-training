class MoviesController < ApplicationController
  def show
    movie = Movie.find(params[:id])

    render locals: { movie: movie }
  end
end
