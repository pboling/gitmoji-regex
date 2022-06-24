# frozen_string_literal: true

require_relative "lib/gitmoji/regex/version"

Gem::Specification.new do |spec|
  spec.name = "gitmoji-regex"
  spec.version = Gitmoji::Regex::Version::VERSION
  spec.authors = ["Peter Boling"]
  spec.email = ["peter.boling@gmail.com"]

  spec.summary = "A regular expression for Gitmoji symbols"
  spec.description = "A regular expression matching Gitmoji (a subset of Unicode Emoji) symbols"
  spec.homepage = "https://github.com/pboling/gitmoji-regex"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.4.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/pboling/gitmoji-regex/tree/v#{spec.version}"
  spec.metadata["changelog_uri"] = "https://github.com/pboling/gitmoji-regex/blob/v#{spec.version}/CHANGELOG.md"
  spec.metadata["bug_tracker_uri"] = "https://github.com/pboling/gitmoji-regex/issues"
  spec.metadata["documentation_uri"] = "https://www.rubydoc.info/gems/gitmoji-regex/#{spec.version}"
  spec.metadata["wiki_uri"] = "https://github.com/pboling/gitmoji-regex/wiki"
  spec.metadata["rubygems_mfa_required"] = "true"

  # Specify which files should be added to the gem when it is released.
  spec.files = Dir["lib/**/*.rb", "CHANGELOG.md", "CODE_OF_CONDUCT.md", "CONTRIBUTING.md", "LICENSE.txt", "README.md",
                   "SECURITY.md"]
  spec.test_files = Dir["spec/**/*"]
  spec.bindir = "exe"
  spec.executables = []
  spec.require_paths = ["lib"]

  spec.add_dependency "version_gem", "~> 1.1"

  spec.add_development_dependency "http", ">= 4.4.1", "< 6"
  spec.add_development_dependency "json", ">= 2.0.2", "~> 2.0"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.10"
  spec.add_development_dependency "rspec-benchmark", "~> 0.6"
  spec.add_development_dependency "rspec-block_is_expected", "~> 1.0"
  # Linting - rubocop-lts v8 is a rubocop wrapper for Ruby >= 2.2,
  #   and should only be bumped when dropping old Ruby support
  # see: https://dev.to/pboling/rubocop-lts-1e31
  spec.add_development_dependency "rubocop-lts", ["~> 12.0", ">= 12.0.1"]
  spec.add_development_dependency "yard", ">= 0.9.20"
end
