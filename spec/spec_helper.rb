# frozen_string_literal: true

DEBUG = ENV.fetch("DEBUG", nil) == "true"

# external gems
require "version_gem/ruby"
require "version_gem/rspec"

# RSpec Configs
require "config/rspec/rspec_core"
require "config/rspec/rspec_block_is_expected"

engine = "ruby"
major = 2
minor = 7
version = "#{major}.#{minor}"
gte_min = VersionGem::Ruby.gte_minimum_version?(version, engine)
actual_minor = VersionGem::Ruby.actual_minor_version?(major, minor, engine)

debugging = gte_min && DEBUG
RUN_COVERAGE = gte_min && (ENV.fetch("COVER_ALL", nil) || ENV.fetch("CI_CODECOV", nil) || ENV["CI"].nil?)
ALL_FORMATTERS = actual_minor && (ENV.fetch("COVER_ALL", nil) || ENV.fetch("CI_CODECOV", nil) || ENV.fetch("CI", nil))

if DEBUG
  if debugging
    require "byebug"
  elsif VersionGem::Ruby.gte_minimum_version?(version, "jruby")
    require "pry-debugger-jruby"
  end
end

# Load Code Coverage as the last thing before this gem
if RUN_COVERAGE
  require "simplecov" # Config file `.simplecov` is run immediately when simplecov loads
end

# This gem
require "gitmoji/regex"

# Not required by default, as it is not part of the gem's API, primarily for specs and maintainers
require "gitmoji/regex/reference"

GITMOJI_REF = Gitmoji::Regex::Reference.instance
