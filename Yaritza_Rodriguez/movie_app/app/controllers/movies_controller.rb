class MoviesController < ApplicationController
    def index
        @movies = Movie.all
    end

    def search

    end

    def new
        #@movies = Movie.new
    end
end