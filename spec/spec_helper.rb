# frozen_string_literal: true

DEBUG = ENV.fetch("DEBUG", nil) == "true"
DEBUG_IDE = ENV.fetch("DEBUG_IDE", "false") == "true"

# external gems
require "version_gem/ruby"
require "version_gem/rspec"

engine = "ruby"
major = 2
minor = 7
version = "#{major}.#{minor}"
gte_min = VersionGem::Ruby.gte_minimum_version?(version, engine)
actual_minor = VersionGem::Ruby.actual_minor_version?(major, minor, engine)

DEBUGGING = gte_min && DEBUG
DEBUG_JRUBY = VersionGem::Ruby.gte_minimum_version?(version, "jruby")
RUN_COVERAGE = gte_min && (ENV.fetch("COVER_ALL", nil) || ENV.fetch("CI_CODECOV", nil) || ENV["CI"].nil?)
ALL_FORMATTERS = (gte_min && ENV.fetch("COVER_ALL", nil)) ||
  (actual_minor && (ENV.fetch("CI_CODECOV", nil) || ENV.fetch("CI", nil)))

# RSpec Configs
require "config/rspec/rspec_core"
require "config/rspec/rspec_block_is_expected"
require "config/debug"

# Load Code Coverage as the last thing before this gem
if RUN_COVERAGE
  require "simplecov" # Config file `.simplecov` is run immediately when simplecov loads
end

# This gem
require "gitmoji/regex"

# Not required by default, as it is not part of the gem's API, primarily for specs and maintainers
require "gitmoji/regex/reference"

GITMOJI_REF = Gitmoji::Regex::Reference.instance
