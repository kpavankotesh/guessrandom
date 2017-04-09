require 'sinatra'
require 'sinatra/reloader'

get '/hi' do
  number = rand(100)
  erb :index, :locals => {:number => number}
end