require 'sinatra/base'


class Battle < Sinatra::Base

  get '/' do
    'battle'
  end
end