FillerText
==========

by @colindean

[![Testing Build Status](https://github.com/colindean/fillertext/actions/workflows/testing.yml/badge.svg)](https://github.com/colindean/fillertext/actions/workflows/testing.yml)
[![Release Build Status](https://github.com/colindean/fillertext/actions/workflows/release.yml/badge.svg)](https://github.com/colindean/fillertext/actions/workflows/release.yml)
[![Gem Version](https://badge.fury.io/rb/fillertext.svg)](https://badge.fury.io/rb/fillertext)

Introduction
------------

FillerText is a gem useful for generating, well, filler text. It can do the standard "lorem ipsum" text or a variety of other clever substitute texts.

Installing FillerText
---------------------

Install using:

```sh
gem install fillertext
```

or add the gem to your project's `Gemfile`:

```ruby
gem 'fillertext'
```

Using FillerText
----------------

Here's how you use FillerText.

There are two main ways. One is cleaner because it keeps FillerText within its
own namespace. The other method will add `Fixnum#filler` to keep some tasty
syntactical sugar.

```ruby
FillerText::FillerText.sentences 5
FillerText::FillerText.words 2
FillerText::FillerText.characters 5
FillerText::FillerText.bytes 4
FillerText::FillerText.paragraphs 1
```

or the *much* easier and intended method:

```ruby
2.filler.sentences
1.filler.paragraphs
```

You can also change the style from the default "lorem ipsum" to something else.

```ruby
# the old favorite
FillerText::FillerText.style = FillerText::Style::LoremIpsum
# a mash of words
FillerText::FillerText.style = FillerText::Style::HipsterIpsum
# handmade just like grandma's pierogies
FillerText::FillerText.style = FillerText::Style::YinzerIpsum
# homage to the great Pittsburgh Penguins announcer
FillerTest::FillerText.style = FillerText::Style::MikeLange
```

Contributing to FillerText
--------------------------

Patches welcome. Please file using Github issues.

I sincerely thank Ashvith Shetty (@Ashvith) for modernizing the build system
for this software in 2022. Things are a lot easier to handle now than they were
in 2011!


### Releases

As of 0.2.3, FillerText uses
[release-please](https://github.com/googleapis/release-please) along with
[release-please-action](https://github.com/google-github-actions/release-please-action)
for release automation in GitHub Actions.

Following [Conventional Commits v1.0
standard](https://www.conventionalcommits.org/en/v1.0.0/),
prefix a commit with `fix:` to increment the patch version in a future release,
prefix with `feat:` to increment the minor version, and
prefix with `feat!:` or `fix!:` or `refactor!:` to mark a breaking change and
a major version increment.

For more information, read the [release-please-action
documentation](https://github.com/google-github-actions/release-please-action#how-release-please-works)
on releasing.

License
-------

FillerText is licensed under the MIT license.
Copyright (C) 2011-2022 by Colin Dean.
See [LICENSE.txt](LICENSE.txt) for more.

