require 'rake'
require 'rake/tasklib'
require "sequel"
require "sequel/extensions/migration"

module OpenHood
  module Rake
    class ConsoleTask < ::Rake::TaskLib
      def base_path
        File.expand_path('.')
      end

      def path
        File.join(base_path, "migrations")
      end

      def config
        environment = ENV["RACK_ENV"] || "development"
        @config ||= YAML.load_file(File.join(base_path, "config", "#{environment}.yml"))
      end

      def connection
        Sequel.connect(config[:db][:uri])
      end

      def initialize
        desc "Pseudo console"
        task :console do
          connection
          require "readline"
          require "bond"
          puts "Enable completion..."
          require "bond/completion"

          # read history
          history_file = File.join(ENV["HOME"], ".myrb_history")
          if File.exists?(history_file)
            puts "Restore history..."
            IO.readlines(history_file).each{|e| Readline::HISTORY << e.chomp}
          end

          # load models
          puts "Load models..."
          Dir.glob(File.join(base_path, "models", "*.rb")).each do |m|
            require m
          end

          # eval input
          puts ""
          while (input = Readline.readline('>> ', true)) != "exit"
            begin puts "=> #{eval(input).inspect}"; rescue Exception; puts "Error: #{$!}" end
          end
          puts ""

          # write back to history
          puts "Save history..."
          File.open(history_file, "w") {|f| f.write Readline::HISTORY.to_a.join("\n") }
        end
      end
    end
  end
end