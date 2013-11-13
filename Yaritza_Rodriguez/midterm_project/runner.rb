    require 'rest-client'
    require 'json'
    require_relative 'midterm'

puts "Hello and welcome to  Organic Index, powered by Reddit! \nHere you can search for an index of posts, including news as well as the views of the \nReddit community in regards to anything relating to the concept of *organic*.
\nWhat would you like to search? (Kindly exclude symbols e.g: #, !,@, etc from your search)"

user_imput = gets.chomp
puts "Okay, lets look for posts related to the term(s): #{user_imput}"

listing = Posts.new(user_imput)

puts listing.search
