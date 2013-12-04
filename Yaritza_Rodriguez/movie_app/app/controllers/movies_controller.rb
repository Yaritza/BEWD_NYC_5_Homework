class MoviesController < ApplicationController
    def index
        @movies = Movie.all
    end

    def search

    end

    def new
        @movies = Movie.new
    end

    def create
       # raise params[:movie].inspect
        safe_movie = params.require(:movie).permit(:title, :description, :year_released)
        @movies = Movie.create safe_movie
        redirect_to @movies
    end

    def show
       @movie = Movie.find params[:id]
    end

    def edit
      @movie = Movie.find params[:id]
    end

   def update
     @movies = Movie.find params[:id]
      safe_movie = params.require(:movie).permit(:title, :description, :year_released)
     @movies.update safe_movie

     redirect_to @movies
  end

end