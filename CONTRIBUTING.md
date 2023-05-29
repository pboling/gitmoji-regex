## Contributing

Bug reports and pull requests are welcome on GitHub at [https://github.com/pboling/gitmoji-regex][source]
. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to
the [code of conduct][conduct].

To submit a patch, please fork the project and create a patch with tests. Once you're happy with it send a pull request!

## Detailed instructions on Submitting a Pull Request

1. [Fork the repository.][fork]
2. [Create a topic branch.][branch]
3. Add specs for your unimplemented feature or bug fix.
4. Run `bundle exec rake spec`. If your specs pass, return to step 3.
5. Implement your feature or bug fix.
6. Run `bundle exec rake`. If your specs fail, return to step 5.
7. Run `open coverage/index.html`. If your changes are not completely covered
   by your tests, return to step 3.
8. Add documentation for your feature or bug fix.
9. Commit and push your changes.
10. [Submit a pull request.][pr]

[fork]: http://help.github.com/fork-a-repo/
[branch]: http://learn.github.com/p/branching.html
[pr]: http://help.github.com/send-pull-requests/

## Release

To release a new version:

1. run `bin/refresh`, or `rake regenerate`, to update the regex to current gitmoji set
   - Test `gitmoji/regex/reference_spec.rb` may fail showing new gitmojis
   - These will need to be added to the test, and noted in the CHANGELOG
2. update the version number in `version.rb`
3. run `bin/setup && bin/rake` to update `Gemfile.lock`
4. run `bundle exec rake build:checksum`
5. move the built gem to project root
6. run `bin/checksum` to create the missing SHA256 checksum
7. move the built gem back to `pkg/`
8. commit the changes
9. run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org][rubygems].

NOTE: You will need to have a public key in `certs/`, and list your cert in the
`gemspec`, in order to sign the new release.
See: [RubyGems Security Guide][rubygems-security-guide]

## Contributors

[![Contributors](https://contrib.rocks/image?repo=pboling/gitmoji-regex)][contributors]

Made with [contributors-img][contrib-rocks].

[comment]: <> (Following links are used by README, CONTRIBUTING)

[conduct]: https://github.com/pboling/gitmoji-regex/blob/master/CODE_OF_CONDUCT.md

[contrib-rocks]: https://contrib.rocks

[contributors]: https://github.com/pboling/gitmoji-regex/graphs/contributors

[comment]: <> (Following links are used by README, CONTRIBUTING, Homepage)

[source]: https://github.com/pboling/gitmoji-regex/
