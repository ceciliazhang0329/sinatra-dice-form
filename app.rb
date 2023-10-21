require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:form_page)
end

get("/process_roll") do
  @rolls = []
  @num_dice = params["dice"].to_i
  @num_sides = params["sides"].to_i

  @num_dice.times do
    die = rand(1..@num_sides)

    @rolls.push(die)
  end

  erb(:number_page)
end
