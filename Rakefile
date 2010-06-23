#!/usr/local/bin/macruby

require 'rake/testtask'

task "default" => ["test"]

Rake::TestTask.new do |t|
  t.test_files = FileList["test*.rb"]
  t.verbose = true
end