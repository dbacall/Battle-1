require 'sinatra/base'

class Battle < Sinatra::Base
enable :sessions # Stores all data in a cookie

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player1] = params['Player 1'] # Stores the player(s) in the session
    session[:player2] = params['Player 2']

    redirect '/battle'
  end

  get '/battle' do
    @player1 = session[:player1]
    @player2 = session[:player2]

    erb :battle
  end

  get '/attack' do
    @player1 = session[:player1]
    @player2 = session[:player2]

    erb :attack
  end

end
