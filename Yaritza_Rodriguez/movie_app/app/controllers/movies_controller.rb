class MoviesController < ApplicationController
    def index
        @movies = Movie.all
    end

    def search

    end

    def new
        @movie = Movie.new
    end

    def create

       # params[:movie].inspect

        safe_movie = params.require(:movie).permit(:title, :description, :year_released, :rating)
        @movie = Movie.create safe_movie

        if @movie.save
           flash[:notice] = "Successfully saved!"
        redirect_to @movie

      else
        render 'new'
      end
    end

      def show
       @movie = Movie.find params[:id]
      end

    def edit
      @movie = Movie.find params[:id]
    end

   def update
     @movies = Movie.find params[:id]
      safe_movie = params.require(:movie).permit(:title, :description, :year_released, :rating)
     @movies.update safe_movie

     redirect_to @movies
  end

  private

  def safe_movie_params
      params.require(:movie).permit(:title, :description, :year_released, :rating)
  end
end
