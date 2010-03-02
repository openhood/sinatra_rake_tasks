require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.version = "0.2.0"
    gem.name = "sinatra_rake_tasks"
    gem.summary = %Q{OpenHood Sinatra Rake Tasks}
    gem.description = %Q{Default tasks we're using in our apps}
    gem.email = "team@openhood.com"
    gem.homepage = "http://github.com/openhood/sinatra_rake_tasks"
    gem.authors = ["Jonathan Tron", "Joseph Halter"]
    gem.add_dependency "rspec", '>= 2.0.0.a'
    gem.add_dependency "cucumber", '>= 0.6.2'
    gem.add_dependency "sequel", '>= 3.8.0'
    gem.add_dependency "bond"
    gem.add_development_dependency "yard"
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: sudo gem install jeweler"
end

begin
  require 'yard'
  YARD::Rake::YardocTask.new
rescue LoadError
  task :yardoc do
    abort "YARD is not available. In order to run yardoc, you must: sudo gem install yard"
  end
end
