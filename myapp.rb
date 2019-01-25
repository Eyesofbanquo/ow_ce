# my app.rb
require 'sinatra'
require 'haml'

class MyApp < Sinatra::Base
  get '/' do
    noname = "Eyesofbanquo"
    haml :index, :locals => {:noname => noname}
  end
end