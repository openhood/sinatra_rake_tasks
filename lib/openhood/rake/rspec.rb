require 'rake'
require 'rake/tasklib'
require 'rspec/core/rake_task'

module OpenHood
  module Rake
    class SpecTask < ::Rspec::Core::RakeTask
      def initialize(name=:spec)
        super(name)
      end
    end
  end
end