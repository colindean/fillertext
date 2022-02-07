# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

### [0.3.1](https://github.com/colindean/fillertext/compare/v0.3.0...v0.3.1) (2022-02-07)


### Bug Fixes

* Source gemspec version from version.rb ([fc791c5](https://github.com/colindean/fillertext/commit/fc791c5009ff4dc4ceb2f640687aff1bcfcb7007))

## [0.3.0](https://github.com/colindean/fillertext/compare/v0.2.1...v0.3.0) (2022-02-07)


### Features

* Adds release instructions and tests an automated release ([2dd6c80](https://github.com/colindean/fillertext/commit/2dd6c80d83eac2b7c05e431a505fbb4a4b5da175))


## [0.2.1](https://www.github.com/colindean/fillertext/compare/v0.2.0...v0.2.1) (2021-10-27)

### Added

* `MikeLange` style, comprised of phrases from the [famous Pittsburgh Penguins hockey announcer](https://en.wikipedia.org/wiki/Mike_Lange) in honor of his retirement
* Development: Adds `rake irb` to drop to a console for interaction (@m3xq)
* Development: CI is now testing on the latest JRuby and TruffleRuby as well as Ruby 3.0

### Changed

* Updated CI links and badges in README
* Development: Now using GitHub Actions for CI instead of Travis
* Development: Prepare for Minitest 6 by updating test syntax and pinning Minitest 5+.

### Fixed

* Gemfile & Gemfile.lock to reduce vulnerabilities ([4f2c55b](https://www.github.com/colindean/fillertext/commit/4f2c55b29868d8e9ea174e53508d17167a36c3d7))

### Deprecated

* Ruby 2.5 support. Future releases will cease testing against Ruby 2.5 as it is end-of-life as of March 2021.
* Ruby 2.6 support. The first release after March 2022 will cease testing against Ruby 2.6 as it is end-of-life as of March 2022.

### Removed

* `Gemfile.lock` dropped from versioning to follow gem development [best practices](https://yehudakatz.com/2010/12/16/clarifying-the-roles-of-the-gemspec-and-gemfile/).
