require 'sinatra/activerecord'
require 'sinatra/activerecord/rake'

require_relative 'models/user'
require_relative 'models/product'
require_relative 'models/product_category'

require 'rake/testtask'

ENV['RACK_ENV'] = 'test'

Rake::TestTask.new do |t|
  t.test_files = FileList['test/**/test_*.rb']
  Bundler.setup(:default)
  t.verbose = true
end

task default: :test