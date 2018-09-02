# 起動コマンドは下記の容量で
# コンテナの作成
# docker build -t rails-simple-env .
# コンテナの起動(/path/to/source部分をアプリの配置されているディレクトリに書き換える)
# docker run -d -p 3000:3000 -v /path/to/source:/var/www/app rails-simple-env

FROM ruby:2.4.4

WORKDIR /var/www/app

#railsのインストール
RUN  gem install bundler \
    && gem install rails -v 5.0.4

#railsサーバーを起動
EXPOSE 3000
CMD bundle install && rails s

