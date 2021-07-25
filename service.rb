require 'sinatra'
require 'byebug'
require 'active_record'
require_relative 'models/user'
require_relative 'models/product'
require_relative 'models/product_category'
require_relative 'models/order'

configure do
    require_relative File.join('config', 'initializers', 'initializer')
    Initializer.init_all
    set :port, 3000
end

get '/hello' do
    User.first.to_json
end