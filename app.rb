require_relative 'config/environment'

class App < Sinatra::Base
  get '/'do
    @session = session
    erb:index
  end
  
  configure do 
  enable: session
  set:session_secret, "secret"
end
end