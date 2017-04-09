require 'sinatra'
require 'sinatra/reloader'

get '/hi' do
  number = rand(10)
  guess = params["guess"].to_i
  message = guess_message(guess, number)

  erb :index, :locals => {:number => number, :message => message}
end

def guess_message(guess = 2, number = 1)
  if guess > number 
    is_high = "Too High!"
  else
    if guess < number
      is_high = "Too Low!" 
    else 
      is_high = "Equal"
    end
  end

  return is_high
end
