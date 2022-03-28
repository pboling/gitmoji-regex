# Gitmoji::Regex

This gem provides a regex that allows Ruby code to test a string for a [Gitmoji](https://github.com/carloscuesta/gitmoji) character.  Gitmoji is a [subset](https://raw.githubusercontent.com/carloscuesta/gitmoji/master/src/data/gitmojis.json) of the Unicode Emoji character set.  This gem is _not_ a fork of, but was **inspired** by, the wonderful [emoji-regex](https://github.com/ticky/ruby-emoji-regex) gem.

This gem has no runtime dependencies.

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add gitmoji-regex

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install gitmoji-regex

## Usage

```ruby
"🔥" =~ Gitmoji::Regex::REGEX
# => 0 # character at position 0 is a Gitmoji!
"fire" =~ Gitmoji::Regex::REGEX
# => nil
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

See [CONTRIBUTING.md][contributing]

## Contributors

[![Contributors](https://contrib.rocks/image?repo=pboling/gitmoji-regex)]("https://github.com/pboling/gitmoji-regex/graphs/contributors")

Made with [contributors-img](https://contrib.rocks).

## License

The gem is available as open source under the terms of
the [MIT License][license] [![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)][license-ref].
See [LICENSE][license] for the official [Copyright Notice][copyright-notice-explainer].

* Copyright (c) 2022 [Peter H. Boling][peterboling] of [Rails Bling][railsbling]

NOTE: the [gitmoji project](https://github.com/carloscuesta/gitmoji) is also [MIT Licensed](https://github.com/carloscuesta/gitmoji/blob/master/LICENSE), and the file `src/gitmojis.json` comes from that project.

## Code of Conduct

Everyone interacting in the Gitmoji::Regex project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/pboling/gitmoji-regex/blob/main/CODE_OF_CONDUCT.md).

## Versioning

This library aims to adhere to [Semantic Versioning 2.0.0][semver]. Violations of this scheme should be reported as
bugs. Specifically, if a minor or patch version is released that breaks backward compatibility, a new version should be
immediately released that restores compatibility. Breaking changes to the public API will only be introduced with new
major versions.

As a result of this policy, you can (and should) specify a dependency on this gem using
the [Pessimistic Version Constraint][pvc] with two digits of precision.

For example:

```ruby
spec.add_dependency "gitmoji-regex", "~> 0.1"
```

[copyright-notice-explainer]: https://opensource.stackexchange.com/questions/5778/why-do-licenses-such-as-the-mit-license-specify-a-single-year

[gh_discussions]: https://github.com/pboling/gitmoji-regex/discussions

[conduct]: https://github.com/pboling/gitmoji-regex/blob/main/CODE_OF_CONDUCT.md

[contributing]: https://github.com/pboling/gitmoji-regex/blob/main/CONTRIBUTING.md

[security]: https://github.com/pboling/gitmoji-regex/blob/main/SECURITY.md

[license]: https://github.com/pboling/gitmoji-regex/blob/main/LICENSE.txt

[license-ref]: https://opensource.org/licenses/MIT

[semver]: http://semver.org/

[pvc]: http://guides.rubygems.org/patterns/#pessimistic-version-constraint

[railsbling]: http://www.railsbling.com

[peterboling]: http://www.peterboling.com

[aboutme]: https://about.me/peter.boling

[angelme]: https://angel.co/peter-boling

[coderme]:http://coderwall.com/pboling

[followme-img]: https://img.shields.io/twitter/follow/galtzo.svg?style=social&label=Follow

[tweetme]: http://twitter.com/galtzo

[politicme]: https://nationalprogressiveparty.org

[documentation]: https://rubydoc.info/github/pboling/gitmoji-regex/main

[source]: https://github.com/pboling/gitmoji-regex/

[actions]: https://github.com/pboling/gitmoji-regex/actions

[issues]: https://github.com/pboling/gitmoji-regex/issues

[climate_maintainability]: https://codeclimate.com/github/pboling/gitmoji-regex/maintainability

[climate_coverage]: https://codeclimate.com/github/pboling/gitmoji-regex/test_coverage

[codecov_coverage]: https://codecov.io/gh/pboling/gitmoji-regex

[code_triage]: https://www.codetriage.com/pboling/gitmoji-regex

[blogpage]: http://www.railsbling.com/tags/gitmoji-regex/

[rubygems]: https://rubygems.org/gems/gitmoji-regex

[chat]: https://gitter.im/pboling/gitmoji-regex?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge

[maintenancee_policy]: https://guides.rubyonrails.org/maintenance_policy.html#security-issues

[liberapay_donate]: https://liberapay.com/pboling/donate

[gh_sponsors]: https://github.com/sponsors/pboling
