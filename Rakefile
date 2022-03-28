# frozen_string_literal: true

require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

require "rubocop/rake_task"

RuboCop::RakeTask.new

desc "Regenerate the Gitmoji reference source files"
task :regenerate do
  exec "bin/refresh"
end

task default: %i[spec rubocop]
