require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do
    erb:index
  end
  
  get '/checkout' do
    erb:checkout
  end
  
  configure  do 
  enable: sessions
  set:session_secret, "secret"
end

end