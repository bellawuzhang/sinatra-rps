require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

get("/rock") do
  we_play = "rock"
  the_options =["rock", "paper", "scissors"]
  @they_play = the_options.sample
  if @they_play == "rock"
    @outcome = "We tied!"
  elsif @they_play == "paper"
    @outcome = "We lost!"
  elsif @they_play == "scissors"
    @outcome = "We won!"
  end
  erb(:rock)
end

get("/paper") do
  we_play = "paper"
  the_options =["rock", "paper", "scissors"]
  @they_play = the_options.sample
  if @they_play == "rock"
    @outcome = "We won!"
  elsif @they_play == "paper"
    @outcome = "We tied!"
  elsif @they_play == "scissors"
    @outcome = "We lost!"
  end
  erb(:paper)
end

get("/scissors") do
  we_play = "scissors"
  the_options =["rock", "paper", "scissors"]
  @they_play = the_options.sample
  if @they_play == "rock"
    @outcome = "We lost!"
  elsif @they_play == "paper"
    @outcome = "We won!"
  elsif @they_play == "scissors"
    @outcome = "We tied!"
  end
  erb(:scissors)
end
