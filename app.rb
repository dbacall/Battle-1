require 'sinatra/base'

class Battle < Sinatra::Base

  get '/' do
    erb :index
  end
  post '/battle' do
    p params['Player 1']
    @player1 = params['Player 1']
    @player2 = params['Player 2']
    erb :battle
  end
end
