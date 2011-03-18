require 'bundler'
Bundler::GemHelper.install_tasks

require 'rake/testtask'

task :default => :test

Rake::TestTask.new do |t|
  t.verbose = true
  t.libs << 'lib' << 'test'
  t.pattern = 'test/**/test_*.rb'
end
