# frozen_string_literal: true

require "bundler/gem_tasks"

begin
  require "rspec/core/rake_task"
  RSpec::Core::RakeTask.new(:spec)
rescue LoadError
  desc "spec task stub"
  task :spec do
    warn "rspec is disabled"
  end
end
desc "alias test task to spec"
task test: :spec

begin
  require "rubocop/rake_task"
  RuboCop::RakeTask.new do |task|
    task.options = ["-D"] # Display the name of the failing cops
  end
rescue LoadError
  desc "rubocop task stub"
  task :rubocop do
    warn "RuboCop is disabled"
  end
end

desc "Regenerate the Gitmoji reference source files"
task :regenerate do
  exec "bin/refresh"
end

task default: %i[test rubocop]
