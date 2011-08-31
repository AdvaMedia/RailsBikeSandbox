source 'http://rubygems.org'
# !!!---!!!---!!!---!!!
# bundle config build.RedCloth --with-cflags="-std=c99"
# !!!---!!!---!!!---!!!

gem 'rails', '3.0.9'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem "locomotive_cms", :git => "git://github.com/locomotivecms/engine.git", :require=>"locomotive/engine"
#gem "locomotive_cms", :path=>"../engine", :require=>"locomotive/engine"
#gem 'railsbike_ext', :path=>"../railsbike_ext", :require => 'railsbike_ext'
gem 'railsbike_ext', :git=>"git://github.com/AdvaMedia/RailsBikeExt.git", :require => 'railsbike_ext'
# Use unicorn as the web server
gem 'unicorn'

# Deploy with Capistrano
gem 'capistrano'

# To use debugger (ruby-debug for Ruby 1.8.7+, ruby-debug19 for Ruby 1.9.2+)
# gem 'ruby-debug'
#gem 'ruby-debug19', :require => 'ruby-debug'

# Bundle the extra gems:
# gem 'bj'
# gem 'nokogiri'
# gem 'sqlite3-ruby', :require => 'sqlite3'
# gem 'aws-s3', :require => 'aws/s3'

# Bundle gems for the local environment. Make sure to
# put test-only gems in this group so their generators
# and rake tasks are available in development mode:
# group :development, :test do
#   gem 'webrat'
# end

group :test, :development do
  #gem 'linecache', '0.43', :platforms => :mri_18
  #gem 'ruby-debug', :platforms => :mri_18
  #gem 'ruby-debug19', :platforms => :mri_19

  gem 'bushido_stub', :git => 'git://github.com/did/bushido_stub.git'

  gem 'cucumber-rails', '1.0.2'
end

group :test do
  gem 'autotest'
  gem 'ZenTest'
  gem 'growl-glue'
  gem 'rspec-rails', '2.6.1'
  gem 'factory_girl_rails'
  gem 'pickle'
  gem 'xpath', '~> 0.1.4'
  gem 'capybara'
  gem 'database_cleaner'

  gem 'spork'
  gem 'launchy'
  gem 'mocha', :git => 'git://github.com/floehopper/mocha.git'
  gem "pickler", :git=>"git://github.com/tpope/pickler.git"
end
