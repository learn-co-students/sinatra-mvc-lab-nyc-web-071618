require_relative 'config/environment'
require_relative 'models/PigLatinizer'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    input = PigLatinizer.new
    @new_instance = input.piglatinize(params[:user_phrase])
    erb :results
  end
end
