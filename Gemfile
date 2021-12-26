source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.2'

gem 'rails', '~> 5.2.4'

gem 'pg', '>= 0.18', '< 2.0'

gem 'puma', '~> 3.11'

gem 'sass-rails', '~> 5.0'

gem 'uglifier', '>= 1.3.0'


gem 'coffee-rails', '~> 4.2'

gem 'turbolinks', '~> 5'

gem 'jbuilder', '~> 2.5'
gem 'bootsnap', '>= 1.1.0', require: false

gem 'devise'

group :development, :test do

  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do

  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'

  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'rails-erd' #erbにてPDF化実行
  gem 'ruby-graphviz' # 起動時のエラーの解消のため
end

group :test do

  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  
  gem 'chromedriver-helper'
end


gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]


gem 'rails_admin', '~> 2.0.0.beta'

#投稿されたリンクから飛べるようにする　https://qiita.com/ngron/items/151e1e4b94319bcbdeec
gem 'rinku'