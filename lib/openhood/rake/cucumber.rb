require 'rake'
require 'rake/tasklib'
require 'cucumber'
require 'cucumber/rake/task'

module OpenHood
  module Rake
    class CucumberTask < ::Cucumber::Rake::Task
      def initialize(name=:features)
        super(name) do |t|
          # Fix pb with latest Cucumber...
          t.fork = true
          opts = []
          opts << ['--format', (ENV['CUCUMBER_FORMAT'] || 'pretty'), '-r', 'features']
          t.cucumber_opts = opts.join(" ")
        end
      end
    end
  end
end