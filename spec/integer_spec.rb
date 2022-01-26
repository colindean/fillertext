# frozen_string_literal: true

RSpec.describe FillerText do
  describe "when called from an integer" do
    include FillerText

    before do
      FillerText.style = FillerText::Style::LoremIpsum
    end

    it "should output sentences" do
      f = 5.filler.sentences
      # look for the periods
      expect(f.scan(/\./).size).to eql 4
    end

    it "should output words" do
      f = 3.filler.words
      # look for four spaces
      expect(f).to eql "Lorem ipsum dolor"
    end

    it "should output characters" do
      f = 5.filler.characters
      expect(f).to eql "Lorem"
    end

    it "should output bytes" do
      f = 5.filler.bytes
      expect(f).to eql "Lorem"
    end

    it "should output paragraphs" do
      f = 5.filler.paragraphs
      # look for newlines
      expect(f.scan(/\n/).size).to eql 4
    end
  end
end
