# frozen_string_literal: true

DEBUG = ENV["DEBUG"] == "true"

ruby_version = Gem::Version.new(RUBY_VERSION)
minimum_version = ->(version, engine = "ruby") { ruby_version >= Gem::Version.new(version) && RUBY_ENGINE == engine }
actual_version = lambda do |major, minor|
  actual = Gem::Version.new(ruby_version)
  major == actual.segments[0] && minor == actual.segments[1] && RUBY_ENGINE == "ruby"
end
debugging = minimum_version.call("2.7") && DEBUG
RUN_COVERAGE = minimum_version.call("2.6") && (ENV["COVER_ALL"] || ENV["CI_CODECOV"] || ENV["CI"].nil?)
ALL_FORMATTERS = actual_version.call(2, 7) && (ENV["COVER_ALL"] || ENV["CI_CODECOV"] || ENV["CI"])

if DEBUG
  if debugging
    require "byebug"
  elsif minimum_version.call("2.7", "jruby")
    require "pry-debugger-jruby"
  end
end

require "simplecov" if RUN_COVERAGE

# This gem
require "gitmoji/regex"

# Not required by default, as it is not part of the gem's API, primarily for specs and maintainers
require "gitmoji/regex/reference"

# RSpec Configs
require "config/rspec/rspec_core"

# Support Files

GITMOJI_REF = Gitmoji::Regex::Reference.instance
