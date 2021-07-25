Steps to execute :->
1. gem install rails
2. gem install bundler:1.17.3
3. bundle install --path .bundle
4. to run migrations run :-> bundle exec ruby db:migrate

5. To run service
bundle exec ruby service.rb
bundle exec irb -r service.rb

bundle exec rake db:drop
bundle exec rake db:create_migration create_user
bundle exec rake db:migrate

use this command to read data from irb console :->
bundle exec irb -I. -r service.rb (. is mandatory, please be safe here)

