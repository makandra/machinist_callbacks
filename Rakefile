require 'rake'
# require 'rake/testtask'
require 'rake/rdoctask'
require 'spec/rake/spectask'

desc 'Default: Run all specs.'
task :default => :spec

desc "Run all specs"
Spec::Rake::SpecTask.new() do |t|
  t.spec_opts = ['--options', "\"spec/support/spec.opts\""]
  t.spec_files = FileList['spec/**/*_spec.rb']
end

desc 'Generate documentation for the machinist_callbacks plugin.'
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'machinist_callbacks'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gemspec|
    gemspec.name = "machinist_callbacks"
    gemspec.summary = "Callback hooks for machinist blueprints"
    gemspec.email = "github@makandra.de"
    gemspec.homepage = "http://github.com/makandra/machinist_callbacks"
    gemspec.description = "Callback hooks for machinist blueprints"
    gemspec.authors = ["Henning Koch"]
    gemspec.add_dependency 'machinist', '<2.0.0'
  end
rescue LoadError
  puts "Jeweler not available. Install it with: sudo gem install jeweler"
end

