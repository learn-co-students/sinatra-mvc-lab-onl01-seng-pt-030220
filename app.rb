require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    pig = PigLatinizer.new
    @userinput = pig.piglatinize(params[:user_phrase].to_s)
    erb :piglatinize
  end
end
