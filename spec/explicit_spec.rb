# frozen_string_literal: true
require "fillertext"

RSpec.describe FillerText do
  describe "when explicitly called" do
    before { FillerText.style = FillerText::Style::LoremIpsum }
    it "should output sentences" do
      expect(FillerText.sentences(5).scan(/\./).size).to eql 4
    end

    it "should output words" do
      expect(FillerText.words(5)).to eql "Lorem ipsum dolor sit amet"
    end

    it "should output characters" do
      expect(FillerText.characters(5)).to eql "Lorem"
    end

    it "should output bytes" do
      expect(FillerText.bytes(5)).to eql "Lorem"
    end

    it "should output paragraphs" do
      expect(FillerText.paragraphs(5).scan(/\n/).size).to eql 4
    end
  end
end
