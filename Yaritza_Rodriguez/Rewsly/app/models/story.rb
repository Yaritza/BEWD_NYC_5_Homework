class Story < ActiveRecord::Base
validates :title, :description, presence: true #must have title & description
validates :link, length: {minimum: 10} #description must be min. 10 chars
validates :category, length: {minimum: 3}
validates :upvotes, numericality: {greater_than_or_equal_to: 0}

  def self.search_for (query)
    self.where('title LIKE :query OR category LIKE :query',
                     query: "%#{query}%")

  end
end