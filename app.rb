require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"
require "pry-byebug"


get "/" do
  @restaurants = Restaurant.all
  erb :index
end

get "/restaurant/:id" do
  id = params["id"]
  @restaurant = Restaurant.find(id)
  erb :show
end

post "/restaurants" do
  restaurant = Restaurant.new(
    name: params["name"],
    address: params["address"]
  )
  restaurant.save
  redirect "/"
end
