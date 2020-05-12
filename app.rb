require_relative 'config/environment'

class App < Sinatra::Base
    configure do
        enable :sessions
        set :session_secret, "test123"
    end

    get '/' do
        erb :index
    end

    post '/checkout' do
        session["item"] = params["item"]
        @session = session
        @actual_item = params["item"]
        erb :checkout
    end
end