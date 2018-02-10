source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end
gem 'bootstrap',        '~> 4.0.0'
gem 'coffee-rails',     '~> 4.2'
gem 'haml-rails',       '~> 1.0'
gem 'jbuilder',         '~> 2.5'
gem 'jquery-rails',     '~> 4.3', '>= 4.3.1'
gem 'puma',             '~> 3.7'
gem 'rails',            '~> 5.1.4'
gem 'sass-rails',       '~> 5.0'
gem 'sprockets-rails',  '~> 3.2', '>= 3.2.1'
gem 'sqlite3'
gem 'turbolinks',       '~> 5'
gem 'uglifier',         '>= 1.3.0'

group :development do
  gem 'listen',                '3.1.5'
  gem 'rubocop',               '~> 0.52.1', require: false
  gem 'spring',                '2.0.2'
  gem 'spring-watcher-listen', '2.0.1'
  gem 'web-console',           '3.5.1'
end

group :test do
  gem 'guard',                    '2.13.0'
  gem 'guard-minitest',           '2.4.4'
  gem 'minitest-reporters',       '1.1.14'
  gem 'rails-controller-testing', '1.0.2'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]