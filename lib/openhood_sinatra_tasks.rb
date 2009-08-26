gem 'test-unit', '1.2.3' if RUBY_VERSION.to_f >= 1.9
require 'openhood/rake/rspec'
require 'openhood/rake/cucumber'
require 'openhood/rake/ci'
require 'openhood/rake/sequel'
require 'openhood/rake/console'