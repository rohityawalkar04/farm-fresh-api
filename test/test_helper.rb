require 'rack/test'
require 'byebug'
require 'factory_bot'
require 'minitest/autorun'
require 'database_cleaner'
require_relative '../service.rb'
require_relative '../models/user.rb'

include FactoryBot::Syntax::Methods
FactoryBot.find_definitions
DatabaseCleaner.strategy = :transaction

class Minitest::Spec
  before :each do
    DatabaseCleaner.start
  end

  after :each do
    DatabaseCleaner.clean
  end
end
