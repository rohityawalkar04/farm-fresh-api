require 'sinatra'
require 'byebug'
require 'active_record'
require_relative 'models/user'

configure do
    require_relative File.join('config', 'initializers', 'initializer')
    Initializer.init_all
    set :port, 3000
end

get '/hello' do
    User.first.to_json
end