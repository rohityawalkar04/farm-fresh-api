require 'sinatra'
require 'byebug'
require 'active_record'
require_relative 'models/user'
require_relative 'models/product'
require_relative 'models/product_category'
require_relative 'models/order'
require 'sinatra/base'
require 'sinatra/cross_origin'

configure do
  enable :cross_origin
end

configure do
    require_relative File.join('config', 'initializers', 'initializer')
    Initializer.init_all
    set :port, 3005
end

get '/getUser' do
    User.first.to_json
end
