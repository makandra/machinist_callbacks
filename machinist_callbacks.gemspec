# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{machinist_callbacks}
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Henning Koch"]
  s.date = %q{2010-11-04}
  s.description = %q{Callback hooks for machinist blueprints}
  s.email = %q{github@makandra.de}
  s.extra_rdoc_files = [
    "README.rdoc"
  ]
  s.files = [
    ".gitignore",
     "Gemfile",
     "Gemfile.lock",
     "MIT-LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "lib/machinist_callbacks.rb",
     "machinist_callbacks.gemspec",
     "spec/app_root/app/controllers/application_controller.rb",
     "spec/app_root/app/models/director.rb",
     "spec/app_root/app/models/movie.rb",
     "spec/app_root/app/models/producer.rb",
     "spec/app_root/config/boot.rb",
     "spec/app_root/config/database.yml",
     "spec/app_root/config/environment.rb",
     "spec/app_root/config/environments/in_memory.rb",
     "spec/app_root/config/environments/mysql.rb",
     "spec/app_root/config/environments/postgresql.rb",
     "spec/app_root/config/environments/sqlite.rb",
     "spec/app_root/config/environments/sqlite3.rb",
     "spec/app_root/config/routes.rb",
     "spec/app_root/db/migrate/001_create_movies.rb",
     "spec/app_root/db/migrate/002_create_directors.rb",
     "spec/app_root/db/migrate/003_create_producers.rb",
     "spec/app_root/lib/console_with_fixtures.rb",
     "spec/app_root/log/.gitignore",
     "spec/app_root/script/console",
     "spec/callbacks_spec.rb",
     "spec/spec_helper.rb",
     "spec/support/blueprints.rb",
     "spec/support/rcov.opts",
     "spec/support/spec.opts"
  ]
  s.homepage = %q{http://github.com/makandra/machinist_callbacks}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Callback hooks for machinist blueprints}
  s.test_files = [
    "spec/app_root/app/controllers/application_controller.rb",
     "spec/app_root/app/models/director.rb",
     "spec/app_root/app/models/movie.rb",
     "spec/app_root/app/models/producer.rb",
     "spec/app_root/config/boot.rb",
     "spec/app_root/config/environment.rb",
     "spec/app_root/config/environments/in_memory.rb",
     "spec/app_root/config/environments/mysql.rb",
     "spec/app_root/config/environments/postgresql.rb",
     "spec/app_root/config/environments/sqlite.rb",
     "spec/app_root/config/environments/sqlite3.rb",
     "spec/app_root/config/routes.rb",
     "spec/app_root/db/migrate/001_create_movies.rb",
     "spec/app_root/db/migrate/002_create_directors.rb",
     "spec/app_root/db/migrate/003_create_producers.rb",
     "spec/app_root/lib/console_with_fixtures.rb",
     "spec/spec_helper.rb",
     "spec/support/blueprints.rb",
     "spec/callbacks_spec.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<machinist>, ["< 2.0.0"])
    else
      s.add_dependency(%q<machinist>, ["< 2.0.0"])
    end
  else
    s.add_dependency(%q<machinist>, ["< 2.0.0"])
  end
end

