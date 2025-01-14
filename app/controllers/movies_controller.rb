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

end
