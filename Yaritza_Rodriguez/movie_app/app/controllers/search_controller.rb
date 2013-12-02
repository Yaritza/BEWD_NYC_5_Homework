class SearchController < ApplicationController
  def index

    #take the value of q
    query = params['q'] #<- hash with indifferent access
                                      #can reference q with 'q' or :q
                                       #search for movies by name and description by q
                                       #Show the results to the user

    @movies = Movie.search_for query
                        # Moved this block: #@movies= Movie.where('title LIKE :query OR description LIKE :query OR year_released LIKE :query',
                       #query: "%#{query}%") to movies.rb

  end
end
