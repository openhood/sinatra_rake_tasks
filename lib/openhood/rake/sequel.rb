require 'rake'
require 'rake/tasklib'
require "sequel"
require "sequel/extensions/migration"

module OpenHood
  module Rake
    class SequelTask < ::Rake::TaskLib
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

      def default_options
        {:table => :"#{config[:app_name]}_schema_info", :column => :version}
      end

      def initialize
        desc "Sequel migration"
        namespace :db do
          namespace :migrate do
            desc "Rollbacks the database one migration and re migrate up. If you want to rollback more than one step, define STEP=x"
            task :redo => [ "db:rollback", "db:migrate" ]
          end

          desc "Migrate the database through scripts in db/migrate. Target specific version with VERSION=x"
          task :migrate do
            connection
            options = default_options
            options[:target] = ENV["VERSION"].to_i if ENV["VERSION"]
            Sequel::Migrator.run(Sequel::Model.db, path, options)
          end

          desc "Rolls the schema back to the previous version. Specify the number of steps with STEP=n"
          task :rollback do
            connection
            step = ENV["STEP"] ? ENV["STEP"].to_i : 1
            target = Sequel::Migrator.get_current_migration_version(Sequel::Model.db) - step
            Sequel::Migrator.run(Sequel::Model.db, path, default_options.merge({:target => target}))
          end

          desc "Retrieves the current schema version number"
          task :version do
            connection
            puts "Current version: #{Sequel::Migrator.get_current_migration_version(Sequel::Model.db, default_options)}"
          end
        end
      end
    end
  end
end