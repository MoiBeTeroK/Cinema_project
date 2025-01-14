class MoviesController < ApplicationController
  # отображение
  def index
    @movies = Movie.all
  end

  # создание
  def new
    @movie = Movie.new
  end

  # отображения по ID
  def show
    @movie = Movie.find(params[:id])
  end
  
  def create
    @movie = Movie.new(movie_params)
  
    if @movie.save
      redirect_to @movie, notice: 'Фильм успешно добавлен!'
    else
      render :new
    end
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :duration, :age_rating, :release_date)
  end

end
