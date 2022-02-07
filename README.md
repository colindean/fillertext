FillerText
==========

by @colindean

[![GitHub Actions Build Status](https://github.com/colindean/fillertext/actions/workflows/testing.yaml/badge.svg)](https://github.com/colindean/fillertext/actions/workflows/testing.yaml)
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

License
-------

FillerText is licensed under the MIT license.
Copyright (C) 2011-2022 by Colin Dean.
See [LICENSE.txt](LICENSE.txt) for more.

