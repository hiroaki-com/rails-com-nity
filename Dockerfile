FROM ruby:2.6.2

ENV LANG C.UTF-8

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev postgresql-client graphviz imagemagick libmagickcore-dev libmagickwand-dev libmagic-dev vim

# yarnパッケージ管理ツールをインストール
RUN apt-get update && apt-get install -y curl apt-transport-https wget && \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get update && apt-get install -y yarn
# Node.jsをインストール
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash - && \
    apt-get install nodejs

WORKDIR /tmp
COPY Gemfile Gemfile.lock ./
RUN bundle install

WORKDIR /app
COPY . /app

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000
