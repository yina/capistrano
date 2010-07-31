require 'rake/testtask'

task :default => :test

Rake::TestTask.new do |t|
  t.test_files = FileList[File.expand_path('./test/test_*.rb')]
  t.verbose = true
end