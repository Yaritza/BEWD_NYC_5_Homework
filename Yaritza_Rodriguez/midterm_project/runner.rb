    require 'rest-client'
    require 'json'
    require_relative 'midterm'

puts "Hello and welcome to Organically Reddit! \nHere you can search for a listing of posts about news and the views of our \ncommunity in regards to anything relating to the concept of 'organic.
\nWhat would you like to search?"

user_imput = gets.chomp
puts "Okay, here's a list of posts related to these term(s): #{user_imput}"

listing = Posts.new(user_imput)

puts listing.search
