require 'sinatra/base'

class Battle < Sinatra::Base
enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player1] = params['Player 1']
    session[:player2] = params['Player 2']

    redirect '/battle'
  end

  get '/battle' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    erb :battle
  end
end
