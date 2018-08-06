# require_relative 'config/environment'

# class App < Sinatra::Base
#   get '/' do
#     erb :user_input
#   end

#   post '/piglatinize' do
#     @text_input = PigLatinizer.new(params[:user_phrase])

#     erb :results
#   end
# end

# above works but doesnt pass learn

require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    pl = PigLatinizer.new
    @piglatin = pl.piglatinize(params[:user_phrase])
    erb :results
  end

end