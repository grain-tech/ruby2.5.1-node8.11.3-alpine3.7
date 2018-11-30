source 'https://rubygems.org'
ruby '2.5.1'

gem 'rails', '5.1.6'

gem 'bootsnap', require: false

gem 'pg', '0.18'
gem 'redis', '3.3.5'
gem 'redis-namespace'

gem 'virtus'

gem 'rgeo', '>= 1.0.0'
gem 'rgeo-activerecord', '6.0.0'
gem 'activerecord-postgis-adapter', '5.2.1'

#Use PUMA instead of webrick
gem 'puma', '~> 3.0'

#temp Do we still use this gem ?
#gem 'redis-session-store'

gem 'resque'
gem 'resque_mailer'
gem 'resque-scheduler'
gem 'resque-web', require: 'resque_web'

gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2.2'
gem 'jquery-rails', '>= 4.3.1'
gem 'jquery-ui-rails'

gem 'slim-rails'
gem 'compass-rails', '3.0.2'
gem 'sass-rails', '~> 5.0.6'

gem 'ace-rails-ap'
gem 'webpacker', '~> 3.0'

gem 'sprockets-rails', '3.2.1', require: 'sprockets/railtie'
gem 'sprockets', '~> 3.7.2'
gem 'babel-transpiler'
gem 'sprockets-es6'

gem 'formtastic', '3.1.5'
gem 'cocoon'
gem 'kaminari', '1.0.1'

gem 'recaptcha', require: 'recaptcha/rails'

gem 'prawn'
gem 'prawn_rails'
# PDF Tables
gem 'prawn-table'

# SpartaSales/flip to add support for 5.2 rails
gem "flip", git: 'https://github.com/SpartaSales/flip.git'

gem 'useragent'

gem 'underscore-rails'
gem 'foundation-rails', '5.5.3.1'
gem 'modernizr-rails'
gem 'select2-rails'

gem 'sorcery', '0.11.0'
gem 'acts-as-taggable-on', '>= 5.0.0'
#temp - rake acts_as_taggable_on_engine:install:migrations
gem 'geokit-rails'
gem 'geocoder'
gem 'google_maps_service'

# compatibility gems
gem 'bit-struct', '0.16'

# audit gems
gem 'paper_trail'
gem "paranoia", "~> 2.3.1"

gem 'acts_as_commentable', git: 'https://github.com/ingedmundo/acts_as_commentable.git', branch: 'rails5'

gem 'carrierwave'
gem 'rmagick'
gem 'fog'
gem 'fog-azure-rm', '~> 0.3.1'
gem 'xmlrpc'

gem 'responders', '~> 2.0'

# 3rd party integrations
gem 'ruby-trello'
gem 'onfleet', git: 'https://github.com/ravensnowbird/onfleet-ruby.git'

gem 'roo'
gem 'roo-xls'

gem 'jbuilder', '~> 2.7.0'

gem 'slack-post', git: 'https://github.com/CozyCo/slack-post.git'
gem 'slackistrano', require: false
gem "slack-notifier"
gem 'net-ping'
#gem 'curb'

gem 'chewy', '0.10.1'

gem 'whenever', require: false
gem 'rails-settings-ui', '~> 1.3.1'
gem 'rails-settings-cached', '0.6.5'

# debugging and monitoring
gem 'newrelic_rpm', '4.2.0.334'

gem 'sentry-raven'
gem 'skylight'
gem 'oj', '~> 3.2.0'

gem 'syslogger'
gem 'lograge'
gem 'logster'

gem 'pry'
gem 'pry-rails'

# payment processors
gem 'stripe'

gem 'xero_gateway'

# analytics
gem 'analytics-ruby', require: 'segment'
gem 'delighted'

gem 'active_model_serializers', '0.9.7'
gem 'fast_jsonapi'
gem "koala", "~> 2.2"

gem 'customerio'

gem 'active_link_to'

gem 'hashdiff'

gem "olive_branch"

gem 'jwt'

gem 'simple_command'

group :development do
  gem 'capistrano'
  gem 'capistrano-rails'
  gem 'capistrano-bundler'
  gem 'capistrano-rvm'
  gem 'capistrano-nvm', require: false
  gem 'capistrano-resque', '~> 0.2.3', require: false
  gem 'capistrano3-puma', github: "seuros/capistrano-puma"
  gem 'capistrano-copy-files'

  gem 'web-console', '>= 2.1.3'
  gem 'bullet', '5.5.1'
  gem 'brakeman'
  gem 'rails_best_practices'
  gem 'rubocop', '0.58.1', require: false
  gem 'rubycritic', require: false
  gem 'derailed_benchmarks'

  gem 'rvm1-capistrano3', require: false
  gem 'byebug'
  gem 'binding_of_caller'
  gem 'better_errors'
  gem 'annotate'

  gem 'foreman'

  gem 'object_tracker', '~> 2.1'

  # supporting gem for Rails Panel (info about Rails app requests) in Chrome Dev Tools
  gem 'meta_request'
end

group :development, :test do
  gem 'guard-zeus'
  gem 'pry-remote'
  gem 'rspec', '~> 3.6.0'
  gem 'rspec-rails', '~> 3.6.0'
  gem 'rspec-activemodel-mocks'
  gem 'cucumber-rails', require: false
  gem 'database_cleaner'
  gem 'factory_girl_rails'
  gem 'shoulda-matchers', '~> 3.1.1'
  gem 'faker'
  gem 'stripe-ruby-mock', '~> 2.5.4', require: 'stripe_mock'
  gem 'terminal-notifier'
  gem 'terminal-notifier-guard'
  gem 'railroady'
  gem 'rails-controller-testing'
  gem 'codeclimate-test-reporter'
end

group :development, :test, :staging do
  gem 'dotenv-rails'
  gem 'sneaky-save', git: 'https://github.com/ravensnowbird/sneaky-save.git'
  gem 'twilio-ruby'
end

group :test do
  gem 'mock_redis'
  gem 'cucumber-timecop', require: false
  gem 'simplecov', require: false
  gem 'simplecov-rcov', require: false, github: 'naviplus-asp/simplecov-rcov'
end

group :staging do
  gem 'timecop'
end
gem 'font-awesome-rails', '~> 4.7.0.2'
gem 'rack-cors'

#HTTPARTY
gem 'httparty'

# Webflow reverseproxy
gem 'rails-reverse-proxy'

#Waterdrop to send messages to kafka server
gem 'waterdrop'

gem "combined_time_select", "~> 2.0.0"

# Trace SQL queries
gem 'active_record_query_trace'

gem 'nokogiri', '1.8.4'

gem 'parser', '2.5.1.0'

gem 'grim'

# Add business day helpers
gem 'business_time'
