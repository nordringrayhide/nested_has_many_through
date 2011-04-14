require 'bundler'
Bundler::GemHelper.install_tasks
require 'rake/testtask'
require 'rake/rdoctask'

desc 'Default: run tests for nested_has_many_through'
task :default => :spec

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec)
task :default => :spec

