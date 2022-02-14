class DirectorsController < ApplicationController
  # GET /directors or /directors.json
  def index
    directors = Director.all

    render locals: { directors: directors }
  end

  # GET /directors/1 or /directors/1.json
  def show
    director = Director.find(params[:id])
    movies = director.movies.to_a

    render locals: { director: director, movies: movies }
  end

  # GET /directors/new
  def new
    director = Director.new

    render locals: { director: director }
  end

  # GET /directors/1/edit
  def edit
    director = Director.find(params[:id])

    render locals: { director: director }
  end

  # POST /directors or /directors.json
  def create
    director = Director.new(director_params)

    if director.save
      redirect_to director_url(director), notice: "Director was successfully created."
    else
      render :new, locals: { director: director }, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /directors/1 or /directors/1.json
  def update
    director = Director.find(params[:id])

    if director.update(director_params)
      redirect_to director_url(director), notice: "Director was successfully updated."
    else
      render :edit, locals: { director: director }, status: :unprocessable_entity
    end
  end

  # DELETE /directors/1 or /directors/1.json
  def destroy
    director = Director.find(params[:id])

    director.destroy

    redirect_to directors_url, notice: "Director was successfully destroyed."
  end

  private

  def director_params
    params.require(:director).permit(:name, :age)
  end
end
