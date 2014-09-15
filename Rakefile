require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec) do |task|
  task.verbose    = false
  task.rspec_opts = '-f json'
end

task :default => :spec
