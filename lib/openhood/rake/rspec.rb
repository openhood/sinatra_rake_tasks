require 'rake'
require 'rake/tasklib'
require 'spec/rake/spectask'

module OpenHood
  module Rake
    class SpecTask < ::Spec::Rake::SpecTask
      def initialize(name=:spec)
        super(name) do |t|
          t.spec_opts = ['--colour', '--format progress', '--loadby mtime', '--reverse']
        end
      end
    end
  end
end