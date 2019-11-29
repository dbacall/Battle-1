require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base
enable :sessions # Stores all data in a cookie

  get '/' do
    erb :index
  end

  post '/names' do
    $player1 = Player.new(params[:player1]) # Stores the player(s) in the session
    $player2 = Player.new(params[:player2])

    redirect '/battle'
  end

  get '/battle' do
    
    @player1 = $player1.name
    @player2 = $player2.name
    @HP = $player2.HP
    erb :battle
  end

  get '/attack' do
    @player1 = $player1.name
    @player2 = $player2.name

    erb :attack
  end

  get '/next-move' do
    @player1 = $player1.name
    @player2 = $player2.name
    $player2.deduct
    @HP = $player2.HP
    erb :battle
  end 

end
