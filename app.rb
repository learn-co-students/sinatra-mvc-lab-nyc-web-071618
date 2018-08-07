require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/piglatinize' do
    @phrase = params[:user_phrase]
    piglatinizer = PigLatinizer.new
    @piglatin = piglatinizer.piglatinize(@phrase)
  end

end
