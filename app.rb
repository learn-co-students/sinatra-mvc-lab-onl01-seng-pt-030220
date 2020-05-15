require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
     s=params[:user_phrase]
     pig=PigLatinizer.new
     aa=pig.piglatinize(s)

  end
end
