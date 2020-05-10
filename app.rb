require_relative 'config/environment'

class App < Sinatra::Base
  
  configure do 
    enable :sessions
    set :session_secret, "lime_tea_with_honey"
  end 
  
  get '/' do 
    erb :index
  end 
  
  post '/checkout' do 
    session["item"] = params[:item]
    @session = session
  end 
  #The controller action /checkout, should take the params from the form and add it to the session hash. The key should be item and the value should be the item the user entered to the purchase. Make sure to store the session hash in an instance variable that you can access in the views.
  
  
end