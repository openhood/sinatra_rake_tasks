require 'rake'
require 'rake/tasklib'

module OpenHood
  module Rake
    class CITask < ::Rake::TaskLib
      def initialize
        namespace :ci do 
          desc 'Run all features and specs' 
          task :all do 
            ENV['RACK_ENV'] = 'test'
            error = 0 

            include Gem if RUBY_VERSION.to_f >= 1.9
            rake_bin = "#{File.join(Config::CONFIG['bindir'], 'rake')} "

            ["#{rake_bin} spec", "#{rake_bin} features"].each do |command|
              if system command 
                error += $?.to_i 
              else 
                error += 1 
              end 
            end 
            at_exit {exit error} if(error != 0) 
           end 
        end
      end
    end
  end
end