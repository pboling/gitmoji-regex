# frozen_string_literal: true

# To get coverage
# On Local, default (HTML) output coverage is turned on with Ruby 2.6+:
#   bundle exec rspec spec
# On Local, all output formats with Ruby 3.0+:
#   COVER_ALL=true bundle exec rspec spec
#
# On CI, all output formats, the ENV variables CI is always set,
#   and COVER_ALL, and CI_CODECOV, are set in the coverage.yml workflow only,
#   so coverage only runs in that workflow, and outputs all formats.
#

if RUN_COVERAGE
  SimpleCov.start do
    enable_coverage :branch
    primary_coverage :branch
    track_files "**/*.rb"

    # Filters (skip these paths for coverage tracking)
    add_filter [
      %r{^/bin/},
      %r{^/certs/},
      %r{^/checksums/},
      %r{^/config/},
      %r{^/docs/},
      %r{^/features/},
      %r{^/gemfiles/},
      %r{^/pkg/},
      %r{^/results/},
      %r{^/sig/},
      %r{^/spec/},
      %r{^/src/},
      %r{^/test/},
      %r{^/vendor/}
    ]

    # Setup Coverage Dir
    SimpleCov.coverage_dir "coverage"

    if ALL_FORMATTERS
      require "simplecov-rcov"
      require "simplecov-json"
      require "simplecov-lcov"
      require "simplecov-cobertura"
      command_name "#{ENV.fetch("GITHUB_WORKFLOW",
        nil)} Job #{ENV.fetch("GITHUB_RUN_ID", nil)}:#{ENV.fetch("GITHUB_RUN_NUMBER", nil)}"

      SimpleCov::Formatter::LcovFormatter.config do |c|
        c.report_with_single_file = true
        c.single_report_path = "coverage/lcov.info"
      end

      SimpleCov.formatters = [
        SimpleCov::Formatter::HTMLFormatter,
        SimpleCov::Formatter::CoberturaFormatter, # XML for Jenkins
        SimpleCov::Formatter::RcovFormatter, # For Hudson
        SimpleCov::Formatter::LcovFormatter,
        SimpleCov::Formatter::JSONFormatter # For CodeClimate
      ]
    else
      command_name "RSpec"
      formatter SimpleCov::Formatter::HTMLFormatter
    end

    # Use Merging (merges RSpec + Cucumber Test Results)
    SimpleCov.use_merging true
    SimpleCov.merge_timeout 3600

    minimum_coverage(line: 100, branch: 100)
  end
else
  puts "Not running coverage on #{RUBY_VERSION}-#{RUBY_ENGINE}"
end
