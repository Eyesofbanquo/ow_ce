# my app.rb
require 'sinatra/base'
require 'sinatra/namespace'
require 'haml'

class MyApp < Sinatra::Base
  register Sinatra::Namespace
  get '/' do
    noname = "Eyesofbanquo"
    haml :index, :locals => {:noname => noname}
  end

  # Endpoint for retrieving rules
  namespace '/rules' do
    get '/assault' do
      "Assault rules"
    end
  end
end