require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    piglatinized_input = PigLatinizer.new
    @piglatinize = piglatinized_input.piglatinize(params[:user_phrase])

    erb :results

  end

end