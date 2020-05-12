require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :Sessions
    set :session_secret, 'secret'
  end

  get '/' do
    @session = session
    erb :index
  end

  post '/checkout' do
    session[:item] = params[:item]

  end
end
