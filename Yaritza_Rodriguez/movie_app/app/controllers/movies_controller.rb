class MoviesController < ApplicationController
  def index
     @Movie =Movie.all
  end
end
