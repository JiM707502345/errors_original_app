# FROM ruby:2.6.5

# FROM ruby:2.6.5

# WORKDIR /tmp
# RUN apt update && apt install -y lsb-release \ 
#     && apt remove -y libmariadb-dev-compat libmariadb-dev

# RUN wget https://dev.mysql.com/get/Downloads/MySQL-8.0/mysql-common_8.0.22-1debian10_amd64.deb \
#     https://dev.mysql.com/get/Downloads/MySQL-8.0/libmysqlclient21_8.0.22-1debian10_amd64.deb \
#     https://dev.mysql.com/get/Downloads/MySQL-8.0/mysql-community-client-core_8.0.22-1debian10_amd64.deb \
#     https://dev.mysql.com/get/Downloads/MySQL-8.0/mysql-community-client_8.0.22-1debian10_amd64.deb \
#     https://dev.mysql.com/get/Downloads/MySQL-8.0/libmysqlclient-dev_8.0.22-1debian10_amd64.deb

# RUN dpkg -i mysql-common_8.0.22-1debian10_amd64.deb \
#     libmysqlclient21_8.0.22-1debian10_amd64.deb \
#     mysql-community-client-core_8.0.22-1debian10_amd64.deb \
#     mysql-community-client_8.0.22-1debian10_amd64.deb \
#     libmysqlclient-dev_8.0.22-1debian10_amd64.deb

# RUN mkdir /app_name
# ENV APP_ROOT /app_name 
# WORKDIR $APP_ROOT

# ADD ./Gemfile $APP_ROOT/Gemfile
# ADD ./Gemfile.lock $APP_ROOT/Gemfile.lock

# RUN gem install bundler
# RUN bundle install
# ADD . $APP_ROOT