# frozen_string_literal: true

# Get the GEMFILE_VERSION without *require* "my_gem/version", for code coverage accuracy
# See: https://github.com/simplecov-ruby/simplecov/issues/557#issuecomment-825171399
load "lib/gitmoji/regex/version.rb"
gem_version = Gitmoji::Regex::Version::VERSION
Gitmoji::Regex::Version.send(:remove_const, :VERSION)

Gem::Specification.new do |spec|
  spec.name = "gitmoji-regex"
  spec.version = gem_version
  spec.authors = ["Peter Boling"]
  spec.email = ["peter.boling@gmail.com"]

  # See CONTRIBUTING.md
  spec.cert_chain = ["certs/pboling.pem"]
  spec.signing_key = File.expand_path("~/.ssh/gem-private_key.pem") if $PROGRAM_NAME.end_with?("gem")

  spec.summary = "A regular expression for Gitmoji symbols"
  spec.description = "A regular expression matching Gitmoji (a subset of Unicode Emoji) symbols"
  spec.homepage = "https://git.sr.ht/~galtzo/gitmoji-regex"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.4.0"

  spec.metadata["source_code_uri"] = "https://git.sr.ht/~galtzo/#{spec.name}"
  spec.metadata["changelog_uri"] = "https://git.sr.ht/~galtzo/#{spec.name}"
  spec.metadata["bug_tracker_uri"] = "https://todo.sr.ht/~galtzo/#{spec.name}"
  spec.metadata["documentation_uri"] = "https://www.rubydoc.info/gems/#{spec.name}/#{spec.version}"
  spec.metadata["wiki_uri"] = "https://man.sr.ht/~galtzo/#{spec.name}/"
  spec.metadata["funding_uri"] = "https://liberapay.com/pboling"
  spec.metadata["mailing_list_uri"] = "https://lists.sr.ht/~galtzo/#{spec.name}-devel"
  spec.metadata["rubygems_mfa_required"] = "true"

  # Specify which files should be added to the gem when it is released.
  spec.files = Dir[
    # Splats (alphabetical)
    "lib/**/*.rb",
    "sig/**/*.rbs",
    # Files (alphabetical)
    "CHANGELOG.md",
    "CODE_OF_CONDUCT.md",
    "CONTRIBUTING.md",
    "LICENSE.txt",
    "README.md",
    "SECURITY.md",
    "src/gitmojis.json"
  ]
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
  spec.add_development_dependency "rubocop-lts", "~> 12.1"
  spec.add_development_dependency "rubocop-packaging", "~> 0.5"
  spec.add_development_dependency "yard", ">= 0.9.34"
end
