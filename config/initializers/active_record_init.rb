require 'active_record' unless defined?(ActiveRecord)

class ActiveRecordInit
  def self.init
    env = ENV["RACK_ENV"] || 'development'
    config = YAML::load(ERB.new(File.read("config/database.yml")).result)
    ActiveRecord::Base.establish_connection(config[env])
    ActiveRecord::Base.default_timezone = :utc

    if env == "production"
      ActiveRecord::Base.logger = ::Logger.new(nil)
      ActiveRecord::Base.clear_all_connections!
    else
      ActiveRecord::Base.logger = Logger.new($stdout)
    end
  end
end