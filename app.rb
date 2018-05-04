require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'
require 'pry'

class App < Sinatra::Base
  
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
<<<<<<< HEAD
    @analyzed_text = PigLatinizer.new
    @pig = @analyzed_text.piglatinize(params[:user_phrase])
=======
    @analyzed_text = PigLatinizer.piglatinize(params[:user_phrase])
>>>>>>> 2c9c8dda5cd2d4b980fc9b4ea532842e18ce00b4
    erb :piglatinize
  end
  
end