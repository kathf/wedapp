source 'https://rubygems.org'

gem 'rails', '4.2.1'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'unicorn'
gem 'devise', '~> 3.5', '>= 3.5.3'
gem 'simple_form'
gem 'sitemap_generator'
gem 'pg'
gem 'haml'
# gem 'turbolinks'

source 'https://rails-assets.org' do
  gem 'rails-assets-bootstrap'
end

group :development do
  # gem "better_errors"
  gem 'quiet_assets'
end

group :production do
  gem 'rails_12factor'
end

group :test do
  gem 'simplecov', require: false
  gem 'shoulda-matchers'
  gem 'factory_girl'
end

group :development, :test do
  gem 'byebug'
  gem 'web-console', '~> 2.0'
  gem 'spring'
  gem 'rspec-rails'
end
