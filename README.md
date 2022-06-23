<p align="center">
    <a href="https://gitmoji.dev/" target="_blank" rel="noopener">
      <img width="120px" src="https://github.com/pboling/gitmoji-regex/raw/main/docs/images/logo/gitmoji-logo-120px.png?raw=true" alt="Gotmoji Logo Copyright (c) 2016-2022 Carlos Cuesta, MIT License">
    </a>
    <a href="https://rubular.com/" target="_blank" rel="noopener">
      <img width="120px" src="https://github.com/pboling/gitmoji-regex/raw/main/docs/images/logo/regex-logo-120px.png?raw=true" alt="Regular Expression OOjs UI Icon by GOJU, MIT License via Wikimedia Commons">
    </a>
    <a href="https://www.ruby-lang.org/" target="_blank" rel="noopener">
      <img width="120px" src="https://github.com/pboling/gitmoji-regex/raw/main/docs/images/logo/ruby-logo-198px.svg?raw=true" alt="Yukihiro Matsumoto, Ruby Visual Identity Team, CC BY-SA 2.5">
    </a>
</p>

# Gitmoji::Regex

This gem provides a regex that allows Ruby code to test a string for a [Gitmoji](https://github.com/carloscuesta/gitmoji) character.  Gitmoji is a [subset](https://raw.githubusercontent.com/carloscuesta/gitmoji/master/src/data/gitmojis.json) of the Unicode Emoji character set.  This gem is _not_ a fork of, but was **inspired** by, the wonderful [emoji_regex](https://github.com/ticky/ruby-emoji-regex) gem.

This gem has no runtime dependencies.

<!--
Numbering rows and badges in each row as a visual "database" lookup,
    as the table is extremely dense, and it can be very difficult to find anything
Putting one on each row here, to document the emoji that should be used, and for ease of copy/paste.

row #s:
1️⃣
2️⃣
3️⃣
4️⃣
5️⃣
6️⃣
7️⃣

badge #s:
⛳️
🖇
🏘
🚎
🖐
🧮
📗

appended indicators:
♻️ - URL needs to be updated from SASS integration. Find / Replace is insufficient.
-->

|     | Project                        | bundle add gitmoji-regex                                                                                                                                                                                                                                                                                                  |
|:----|--------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| 1️⃣ | name, license, docs, standards | [![RubyGems.org][⛳️name-img]][⛳️gem] [![License: MIT][🖇src-license-img]][🖇src-license] <!--[![FOSSA][🏘fossa-img]][🏘fossa]--> [![RubyDoc.info][🚎yard-img]][🚎yard] [![GitMoji][🖐gitmoji-img]][🖐gitmoji] [![SemVer 2.0.0][🧮semver-img]][semver] [![Keep-A-Changelog 1.0.0][📗keep-changelog-img]][📗keep-changelog] |
| 2️⃣ | version & activity             | [![Gem Version][⛳️version-img]][⛳️gem] [![Total Downloads][🖇DL-total-img]][⛳️gem] [![Download Rank][🏘DL-rank-img]][⛳️gem] [![Source Code][🚎src-home-img]][🚎src-home] [![Open PRs][🖐prs-o-img]][🖐prs-o] [![Closed PRs][🧮prs-c-img]][🧮prs-c] <!--[![Next Version][📗next-img]][📗next]-->                           |
| 3️⃣ | maintanence & linting          | [![Maintainability][⛳cclim-maint-img♻️]][⛳cclim-maint] [![Helpers][🖇triage-help-img]][🖇triage-help] [![Depfu][🏘depfu-img♻️]][🏘depfu♻️] [![Contributors][🚎contributors-img]][🚎contributors] [![Style][🖐style-wf-img]][🖐style-wf] [![Kloc Roll][🧮kloc-img]][🧮kloc]                                                |
| 4️⃣ | testing                        | [![Open Issues][⛳iss-o-img]][⛳iss-o] [![Closed Issues][🖇iss-c-img]][🖇iss-c] [![Supported][🏘sup-wf-img]][🏘sup-wf] [![Heads][🚎heads-wf-img]][🚎heads-wf] [![Unofficial Support][🖐uns-wf-img]][🖐uns-wf] <!--[![MacOS][🧮mac-wf-img]][🧮mac-wf] [![Windows][📗win-wf-img]][📗win-wf]-->                                |
| 5️⃣ | coverage & security            | [![CodeClimate][⛳cclim-cov-img♻️]][⛳cclim-cov] [![CodeCov][🖇codecov-img♻️]][🖇codecov] [![Coveralls][🏘coveralls-img]][🏘coveralls] [![Security Policy][🚎sec-pol-img]][🚎sec-pol] [![CodeQL][🖐codeQL-img]][🖐codeQL] [![Code Coverage][🧮cov-wf-img]][🧮cov-wf]                                                        |
| 6️⃣ | resources                      | [![Discussion][⛳gh-discussions-img]][⛳gh-discussions] [![Get help on Codementor][🖇codementor-img]][🖇codementor] [![Chat][🏘chat-img]][🏘chat] [![Blog][🚎blog-img]][🚎blog] [![Wiki][🖐wiki-img]][🖐wiki]                                                                                                               |
| 7️⃣ | spread 💖                      | [![Liberapay Patrons][⛳liberapay-img]][⛳liberapay] [![Sponsor Me][🖇sponsor-img]][🖇sponsor] [![Tweet @ Peter][🏘tweet-img]][🏘tweet] [🌏][aboutme] [👼][angelme] [💻][coderme]                                                                                                                                           |

<!--
The link tokens in the following sections should be kept ordered by the row and badge numbering scheme
-->

<!-- 1️⃣ name, license, docs -->
[⛳️gem]: https://rubygems.org/gems/gitmoji-regex
[⛳️name-img]: https://img.shields.io/badge/name-gitmoji--regex-brightgreen.svg?style=flat
[🖇src-license]: https://opensource.org/licenses/MIT
[🖇src-license-img]: https://img.shields.io/badge/License-MIT-green.svg
[🏘fossa]: https://app.fossa.io/projects/git%2Bgithub.com%2Fpboling%2Fgitmoji-regex?ref=badge_shield
[🏘fossa-img]: https://app.fossa.io/api/projects/git%2Bgithub.com%2Fpboling%2Fgitmoji-regex.svg?type=shield
[🚎yard]: https://www.rubydoc.info/github/pboling/gitmoji-regex
[🚎yard-img]: https://img.shields.io/badge/documentation-rubydoc-brightgreen.svg?style=flat
[🖐gitmoji]: https://gitmoji.dev
[🖐gitmoji-img]: https://img.shields.io/badge/gitmoji-3.9.0-FFDD67.svg?style=flat
[🧮semver-img]: https://img.shields.io/badge/semver-2.0.0-FFDD67.svg?style=flat
[📗keep-changelog]: https://keepachangelog.com/en/1.0.0/
[📗keep-changelog-img]: https://img.shields.io/badge/keep--a--changelog-1.0.0-FFDD67.svg?style=flat

<!-- 2️⃣ version & activity -->
[⛳️version-img]: http://img.shields.io/gem/v/gitmoji-regex.svg
[🖇DL-total-img]: https://img.shields.io/gem/dt/gitmoji-regex.svg
[🏘DL-rank-img]: https://img.shields.io/gem/rt/gitmoji-regex.svg
[🚎src-home]: https://github.com/pboling/gitmoji-regex
[🚎src-home-img]: https://img.shields.io/badge/source-github-brightgreen.svg?style=flat
[🖐prs-o]: https://github.com/pboling/gitmoji-regex/pulls
[🖐prs-o-img]: https://img.shields.io/github/issues-pr/pboling/gitmoji-regex
[🧮prs-c]: https://github.com/pboling/gitmoji-regex/pulls?q=is%3Apr+is%3Aclosed
[🧮prs-c-img]: https://img.shields.io/github/issues-pr-closed/pboling/gitmoji-regex
[📗next]: https://github.com/pboling/gitmoji-regex/milestone/1
[📗next-img]: https://img.shields.io/github/milestones/progress/pboling/gitmoji-regex/1?label=Next%20Version

<!-- 3️⃣ maintanence & linting -->
[⛳cclim-maint]: https://codeclimate.com/github/pboling/gitmoji-regex/maintainability
[⛳cclim-maint-img♻️]: https://api.codeclimate.com/v1/badges/f32e1d1148e8bad58197/maintainability
[🖇triage-help]: https://www.codetriage.com/pboling/gitmoji-regex
[🖇triage-help-img]: https://www.codetriage.com/pboling/gitmoji-regex/badges/users.svg
[🏘depfu♻️]: https://depfu.com/github/pboling/gitmoji-regex?project_id=34924
[🏘depfu-img♻️]: https://badges.depfu.com/badges/300630ab4b7c2efea20806d13d1ef41f/count.svg
[🚎contributors]: https://github.com/pboling/gitmoji-regex/graphs/contributors
[🚎contributors-img]: https://img.shields.io/github/contributors-anon/pboling/gitmoji-regex
[🖐style-wf]: https://github.com/pboling/gitmoji-regex/actions/workflows/style.yml
[🖐style-wf-img]: https://github.com/pboling/gitmoji-regex/actions/workflows/style.yml/badge.svg
[🧮kloc]: https://www.youtube.com/watch?v=dQw4w9WgXcQ
[🧮kloc-img]: https://img.shields.io/tokei/lines/github.com/pboling/gitmoji-regex

<!-- 4️⃣ testing -->
[⛳iss-o]: https://github.com/pboling/gitmoji-regex/issues
[⛳iss-o-img]: https://img.shields.io/github/issues-raw/pboling/gitmoji-regex
[🖇iss-c]: https://github.com/pboling/gitmoji-regex/issues?q=is%3Aissue+is%3Aclosed
[🖇iss-c-img]: https://img.shields.io/github/issues-closed-raw/pboling/gitmoji-regex
[🏘sup-wf]: https://github.com/pboling/gitmoji-regex/actions/workflows/supported.yml
[🏘sup-wf-img]: https://github.com/pboling/gitmoji-regex/actions/workflows/supported.yml/badge.svg
[🚎heads-wf]: https://github.com/pboling/gitmoji-regex/actions/workflows/heads.yml
[🚎heads-wf-img]: https://github.com/pboling/gitmoji-regex/actions/workflows/heads.yml/badge.svg
[🖐uns-wf]: https://github.com/pboling/gitmoji-regex/actions/workflows/unsupported.yml
[🖐uns-wf-img]: https://github.com/pboling/gitmoji-regex/actions/workflows/unsupported.yml/badge.svg
[🧮mac-wf]: https://github.com/pboling/gitmoji-regex/actions/workflows/macos.yml
[🧮mac-wf-img]: https://github.com/pboling/gitmoji-regex/actions/workflows/macos.yml/badge.svg
[📗win-wf]: https://github.com/pboling/gitmoji-regex/actions/workflows/windows.yml
[📗win-wf-img]: https://github.com/pboling/gitmoji-regex/actions/workflows/windows.yml/badge.svg

<!-- 5️⃣ coverage & security -->
[⛳cclim-cov]: https://codeclimate.com/github/pboling/gitmoji-regex/test_coverage
[⛳cclim-cov-img♻️]: https://api.codeclimate.com/v1/badges/f32e1d1148e8bad58197/test_coverage
[🖇codecov-img♻️]: https://codecov.io/gh/pboling/gitmoji-regex/branch/main/graph/badge.svg?token=EJCOr0hsPq
[🖇codecov]: https://codecov.io/gh/pboling/gitmoji-regex
[🏘coveralls]: https://coveralls.io/github/pboling/gitmoji-regex?branch=main
[🏘coveralls-img]: https://coveralls.io/repos/github/pboling/gitmoji-regex/badge.svg?branch=main
[🚎sec-pol]: https://github.com/pboling/gitmoji-regex/blob/main/SECURITY.md
[🚎sec-pol-img]: https://img.shields.io/badge/security-policy-brightgreen.svg?style=flat
[🖐codeQL]: https://github.com/pboling/gitmoji-regex/security/code-scanning
[🖐codeQL-img]: https://github.com/pboling/gitmoji-regex/actions/workflows/codeql-analysis.yml/badge.svg
[🧮cov-wf]: https://github.com/pboling/gitmoji-regex/actions/workflows/coverage.yml
[🧮cov-wf-img]: https://github.com/pboling/gitmoji-regex/actions/workflows/coverage.yml/badge.svg

<!-- 6️⃣ resources -->
[⛳gh-discussions]: https://github.com/pboling/gitmoji-regex/discussions
[⛳gh-discussions-img]: https://img.shields.io/github/discussions/pboling/gitmoji-regex
[🖇codementor]: https://www.codementor.io/peterboling?utm_source=github&utm_medium=button&utm_term=peterboling&utm_campaign=github
[🖇codementor-img]: https://cdn.codementor.io/badges/get_help_github.svg
[🏘chat]: https://gitter.im/pboling/gitmoji-regex
[🏘chat-img]: https://img.shields.io/gitter/room/pboling/gitmoji-regex.svg
[🚎blog]: http://www.railsbling.com/tags/gitmoji-regex/
[🚎blog-img]: https://img.shields.io/badge/blog-railsbling-brightgreen.svg?style=flat
[🖐wiki]: https://github.com/pboling/gitmoji-regex/wiki
[🖐wiki-img]: https://img.shields.io/badge/wiki-examples-brightgreen.svg?style=flat

<!-- 7️⃣ spread 💖 -->
[⛳liberapay-img]: https://img.shields.io/liberapay/patrons/pboling.svg?logo=liberapay
[⛳liberapay]: https://liberapay.com/pboling/donate
[🖇sponsor-img]: https://img.shields.io/badge/sponsor-pboling.svg?style=social&logo=github
[🖇sponsor]: https://github.com/sponsors/pboling
[🏘tweet-img]: https://img.shields.io/twitter/follow/galtzo.svg?style=social&label=Follow
[🏘tweet]: http://twitter.com/galtzo

<!-- Maintainer Contact Links -->
[railsbling]: http://www.railsbling.com
[peterboling]: http://www.peterboling.com
[aboutme]: https://about.me/peter.boling
[angelme]: https://angel.co/peter-boling
[coderme]:http://coderwall.com/pboling

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

## Security

See [SECURITY.md](https://github.com/pboling/gitmoji-regex/blob/main/SECURITY.md).

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
