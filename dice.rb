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
  @rolls = []

  2.times do
    die = rand(1..6)
    @rolls.push(die)
  end
  
  @outcome = "Your total is #{@rolls.sum}."
  erb(:two_six)
end

# Route for two 10-sided dice
get("/dice/2/10") do
  @rolls = []

  2.times do
    die = rand(1..10)
    @rolls.push(die)
  end
  
  @outcome = "Your total is #{@rolls.sum}."
  erb(:two_ten)
end

# Route for one 20-sided die
get("/dice/1/20") do
  @die = rand(1..20)

  @outcome = "You rolled a #{@die}."

  erb(:one_twenty)
end

# Route for five 4-sided dice
get("/dice/5/4") do
  @rolls = []

  5.times do
    die = rand(1..4)
    @rolls.push(die)
  end
  
  @outcome = "Your total is #{@rolls.sum}."

  erb(:five_four)
end

# Route for 100 6-sided dice
get("/dice/100/6") do
  @rolls = []

  100.times do
    die = rand(1..6)
    @rolls.push(die)
  end

  @outcome = "Your total is #{@rolls.sum}."

  erb(:one_hundred_six)
end
