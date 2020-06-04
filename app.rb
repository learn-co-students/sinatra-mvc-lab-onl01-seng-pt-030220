require_relative 'config/environment'
require_relative 'models/piglatinizer'
#require 'pry'

class App < Sinatra::Base
    get "/" do
        erb :user_input
    end

    
    post "/piglatinize" do
        #binding.pry
        @my_sentence = PigLatinizer.new()
        my_params = params[:user_phrase]
        @my_output = @my_sentence.piglatinize(my_params)
        erb :piglatinize
    end

    
end