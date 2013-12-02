class Movie < ActiveRecord::Base

  def self.search_for (query)
    self.where('title LIKE :query OR description LIKE :query OR year_released LIKE :query',
                     query: "%#{query}%")

  end
end