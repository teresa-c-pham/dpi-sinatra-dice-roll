# /dice.rb

require "sinatra"
require "sinatra/reloader"
require "better_errors"
require "binding_of_caller"

# Route for homepage
get("/") do
  erb(:elephant)
end

get("/zebra") do
  "We must add a route for each path we want to support"
end

get("/giraffe") do
  "Hopefully this shows up without having to restart the server 🤞🏾"
end

# Route for two 6-sided dice
get("/dice/2/6") do
  first_die = rand(1..6)
  second_die = rand(1..6)
  sum = first_die + second_die

  @outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}."

  erb(:two_six)
end

# Route for two 10-sided dice
get("/dice/2/10") do
  first_die = rand(1..10)
  second_die = rand(1..10)
  sum = first_die + second_die

  @outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}."

  erb(:two_ten)
end

# Route for one 20-sided die
get("/dice/1/20") do
  first_die = rand(1..20)

 @outcome = "You rolled a #{first_die}."

  erb(:one_twenty)
end

# Route for five 4-sided dice
get("/dice/5/4") do
  first_die = rand(1..4)
  second_die = rand(1..4)
  third_die = rand(1..4)
  fourth_die = rand(1..4)
  fifth_die = rand(1..4)
  sum = first_die + second_die + third_die + fourth_die + fifth_die

  @outcome = "You rolled a #{first_die}, #{second_die}, #{third_die}, #{fourth_die} and a #{fifth_die} for a total of #{sum}."

  erb(:five_four)
end
