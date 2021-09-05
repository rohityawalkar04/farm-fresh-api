FROM ruby:2.6.3

WORKDIR /usr/src/app

COPY Gemfile* ./

RUN gem install bundler:1.17.3

RUN bundle install --path .bundle

COPY . .

# Below is for we are telling docker to listen to this port
EXPOSE  3005

# So we are running this docker image on port docker is listening to
CMD ["bundle", "exec", "rackup", "--host", "0.0.0.0", "-p", "3005"]

# docker build -t veggies_api .
# docker run -p 80:3005 veggies_api
# sinatra runs on 3005 but docker have exposed port 80
# http://localhost:3005/hello will not work but http://localhost:80/hello will