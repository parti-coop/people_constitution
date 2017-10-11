source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.4'
gem 'unicorn'

# database
gem 'mysql2', '>= 0.3.13', '< 0.5'

# model
gem 'kaminari', '~> 0.17.0'

# ui
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'jquery-rails'
gem 'jbuilder', '~> 2.5'
gem 'bootstrap-sass', '~> 3.3', '>= 3.3.5.1'
gem 'haml-rails', '~> 0.9.0'

#util
gem 'envyable', '~> 0.2.0'
gem 'ruby_dig', '~> 0.0.2'
gem 'browser', '~> 2.0', '>= 2.0.2'

group :development do
  gem 'web-console'
  gem 'listen', '~> 3.1.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'puma'
end
