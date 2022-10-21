# frozen_string_literal: true

require "fillertext"

RSpec.describe FillerText do
  describe "when called from an integer" do
    before { described_class.style = FillerText::Style::LoremIpsum }

    it "outputs sentences" do
      f = 5.filler.sentences
      # look for the periods
      expect(f.scan(/\./).size).to be 4
    end

    it "outputs words" do
      f = 3.filler.words
      # look for four spaces
      expect(f).to eql "Lorem ipsum dolor"
    end

    it "outputs characters" do
      f = 5.filler.characters
      expect(f).to eql "Lorem"
    end

    it "outputs bytes" do
      f = 5.filler.bytes
      expect(f).to eql "Lorem"
    end

    it "outputs paragraphs" do
      f = 5.filler.paragraphs
      # look for newlines
      expect(f.scan(/\n/).size).to be 4
    end
  end
end
