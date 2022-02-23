class RereleasesController < ApplicationController
  def create
    original_movie = Movie.find(params[:movie_id])

    release = original_movie.rerelease(year: params[:year])

    redirect_to release
  end

  def new 
    movie = Movie.find(params[:movie_id])

    render "new", locals: { movie: movie }
  end
end