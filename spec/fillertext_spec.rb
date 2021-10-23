require 'minitest/autorun'
begin; require 'turn'; rescue LoadError; rescue RuntimeError; end
require 'simplecov'
SimpleCov.start if ENV['COVERAGE']
require_relative '../lib/fillertext'

describe FillerText do

  describe "when explicity called" do
    include FillerText

    before do
      FillerText::FillerText.style = FillerText::Style::LoremIpsum
    end

    it "should output sentences" do
      f = FillerText.sentences 5
      #look for the periods
      _(f.scan(/\./).size).must_equal 4
    end

    it "should output words" do
      f = FillerText.words 5
      #look for four spaces
      _(f).must_equal "Lorem ipsum dolor sit amet"
    end

    it "should output characters" do
      f = FillerText.characters 5
      _(f).must_equal "Lorem"
    end

    it "should output bytes" do
      f = FillerText.bytes 5
      _(f).must_equal "Lorem"
    end

    it "should output paragraphs" do
      f = FillerText.paragraphs 5
      #look for newlines
      _(f.scan(/\n/).size).must_equal 4
    end
  end

  describe "when called from an integer" do
    include FillerText

    before do
      FillerText::FillerText.style = FillerText::Style::LoremIpsum
    end

    it "should output sentences" do
      f = 5.filler.sentences
      #look for the periods
      _(f.scan(/\./).size).must_equal 4
    end

    it "should output words" do
      f = 3.filler.words
      #look for four spaces
      _(f).must_equal "Lorem ipsum dolor"
    end

    it "should output characters" do
      f = 5.filler.characters
      _(f).must_equal "Lorem"
    end

    it "should output bytes" do
      f = 5.filler.bytes
      _(f).must_equal "Lorem"
    end

    it "should output paragraphs" do
      f = 5.filler.paragraphs
      #look for newlines
      _(f.scan(/\n/).size).must_equal 4
    end
  end

  describe "when changing filler text style" do
    include FillerText

    it "should use LoremIpsum" do
      FillerText::FillerText.style = FillerText::Style::LoremIpsum
      t = "Lorem ipsum"
      _(t.length.filler.characters).must_equal t
    end

    it "should use hipster ipsum" do
      FillerText::FillerText.style = FillerText::Style::HipsterIpsum
      t = "Hipster ipsum"
      _(t.length.filler.characters).must_equal t
    end

    it "should use yinzer ipsum" do
      t = "Yinzer ipsum"
      FillerText::FillerText.style = FillerText::Style::YinzerIpsum
      _(t.length.filler.characters).must_equal t
    end

    #add more styles here

  end

end
