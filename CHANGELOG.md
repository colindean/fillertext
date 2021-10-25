# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased](https://github.com/colindean/fillertext/compare/v0.2.0...master)

### Added

* Development: Adds `rake irb` to drop to a console for interaction (@m3xq)
* Development: CI is now testing on the latest JRuby and TruffleRuby as well as Ruby 3.0

### Changed

* Updated CI links and badges in README
* Development: Now using GitHub Actions for CI instead of Travis
* Development: Prepare for Minitest 6 by updating test syntax and pinning Minitest 5+.

### Deprecated

* Ruby 2.5 support. Future releases will cease testing against Ruby 2.5 as it is end-of-life as of March 2021.
* Ruby 2.6 support. The first release after March 2022 will cease testing against Ruby 2.6 as it is end-of-life as of March 2022.

### Removed

* `Gemfile.lock` dropped from versioning to follow gem development [best practices](https://yehudakatz.com/2010/12/16/clarifying-the-roles-of-the-gemspec-and-gemfile/).
