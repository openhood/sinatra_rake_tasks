# Generated by jeweler
# DO NOT EDIT THIS FILE
# Instead, edit Jeweler::Tasks in Rakefile, and run `rake gemspec`
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{sinatra_rake_tasks}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jonathan Tron", "Joseph Halter"]
  s.date = %q{2009-08-26}
  s.description = %q{Default tasks we're using in our apps}
  s.email = %q{team@openhood.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION.yml",
     "lib/openhood/rake/ci.rb",
     "lib/openhood/rake/console.rb",
     "lib/openhood/rake/cucumber.rb",
     "lib/openhood/rake/rspec.rb",
     "lib/openhood/rake/sequel.rb",
     "lib/sinatra_rake_tasks.rb",
     "spec/spec_helper.rb"
  ]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/openhood/sinatra_rake_tasks}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{OpenHood Sinatra Rake Tasks}
  s.test_files = [
    "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rspec>, ["~> 1.2.6"])
      s.add_runtime_dependency(%q<cucumber>, ["~> 0.3.97"])
      s.add_runtime_dependency(%q<sequel>, [">= 3.2.0"])
      s.add_runtime_dependency(%q<bond>, [">= 0"])
      s.add_development_dependency(%q<yard>, [">= 0"])
    else
      s.add_dependency(%q<rspec>, ["~> 1.2.6"])
      s.add_dependency(%q<cucumber>, ["~> 0.3.97"])
      s.add_dependency(%q<sequel>, [">= 3.2.0"])
      s.add_dependency(%q<bond>, [">= 0"])
      s.add_dependency(%q<yard>, [">= 0"])
    end
  else
    s.add_dependency(%q<rspec>, ["~> 1.2.6"])
    s.add_dependency(%q<cucumber>, ["~> 0.3.97"])
    s.add_dependency(%q<sequel>, [">= 3.2.0"])
    s.add_dependency(%q<bond>, [">= 0"])
    s.add_dependency(%q<yard>, [">= 0"])
  end
end
