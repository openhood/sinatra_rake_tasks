require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "openhood_sinatra_tasks"
    gem.summary = %Q{OpenHood Sinatra Rake Tasks}
    gem.description = %Q{Default tasks we're using in our apps}
    gem.email = "team@openhood.com"
    gem.homepage = "http://github.com/openhood/openhood_sinatra_tasks"
    gem.authors = ["Jonathan Tron", "Joseph Halter"]
    gem.add_dependency "rspec", '~> 1.2.6'
    gem.add_dependency "cucumber", '~> 0.3.97'
    gem.add_dependency "sequel", '>= 3.2.0'
    gem.add_dependency "bond"
    gem.add_development_dependency "yard"
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: sudo gem install jeweler"
end

require 'spec/rake/spectask'
Spec::Rake::SpecTask.new(:spec) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.spec_files = FileList['spec/**/*_spec.rb']
end

Spec::Rake::SpecTask.new(:rcov) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.pattern = 'spec/**/*_spec.rb'
  spec.rcov = true
end

task :spec => :check_dependencies

task :default => :spec

begin
  require 'yard'
  YARD::Rake::YardocTask.new
rescue LoadError
  task :yardoc do
    abort "YARD is not available. In order to run yardoc, you must: sudo gem install yard"
  end
end
