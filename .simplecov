# frozen_string_literal: true

# To get coverage
# On Local, default (HTML) output, it just works, coverage is turned on:
#   bundle exec rspec spec
# On Local, all output formats:
#   COVER_ALL=true bundle exec rspec spec
#
# On CI, all output formats, the ENV variables CI is always set,
#   and COVER_ALL, and CI_CODECOV, are set in the coverage.yml workflow only,
#   so coverage only runs in that workflow, and outputs all formats.
#

if RUN_COVERAGE
  require "codecov"
  require "simplecov-lcov"
  require "simplecov-cobertura"

  SimpleCov.start do
    enable_coverage :branch
    primary_coverage :branch
    add_filter "spec"
    add_filter "lib/gitmoji/regex/version.rb"
    add_filter "src/regex.rb"
    track_files "**/*.rb"

    if ALL_FORMATTERS
      command_name "#{ENV["GITHUB_WORKFLOW"]} Job #{ENV["GITHUB_RUN_ID"]}:#{ENV["GITHUB_RUN_NUMBER"]}" if ENV["CI"]

      SimpleCov::Formatter::LcovFormatter.config do |c|
        c.report_with_single_file = true
        c.single_report_path = "coverage/lcov.info"
      end

      SimpleCov.formatters = [
        SimpleCov::Formatter::HTMLFormatter,
        SimpleCov::Formatter::CoberturaFormatter,
        SimpleCov::Formatter::LcovFormatter,
        SimpleCov::Formatter::JSONFormatter, # For CodeClimate
        SimpleCov::Formatter::Codecov # For CodeCov
      ]
    else
      formatter SimpleCov::Formatter::HTMLFormatter
    end

    minimum_coverage(100)
  end
else
  puts "Not running coverage on #{RUBY_ENGINE} #{RUBY_VERSION}"
end
