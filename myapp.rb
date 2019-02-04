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
    require_relative 'lib/rules_loader'
    include RulesLoader

    get '/test-assault' do
      json = load_json "data/sample/assault.json"
      json.to_json
    end

    get '/assault' do
      json = load_json "data/modes/rules/assault.json"
      json.to_json
    end

    get '/control' do
      json = load_json "data/modes/rules/control.json"
      json.to_json
    end

    get '/escort' do
      json = load_json "data/modes/rules/escort.json"
      json.to_json
    end

    get '/hybrid' do
      json = load_json "data/modes/rules/hybrid.json"
      json.to_json
    end
  end
end