# frozen_string_literal: true

RSpec.describe FillerText do
  describe "when explicitly called" do
    # include FillerText
    before do
      FillerText.style = FillerText::Style::LoremIpsum
    end
    it "should output sentences" do
      f = FillerText.sentences 5
      # look for the periods
      expect(f.scan(/\./).size).to eql 4
    end

    it "should output words" do
      f = FillerText.words 5
      # look for four spaces
      expect(f).to eql "Lorem ipsum dolor sit amet"
    end

    it "should output characters" do
      f = FillerText.characters 5
      expect(f).to eql "Lorem"
    end

    it "should output bytes" do
      f = FillerText.bytes 5
      expect(f).to eql "Lorem"
    end

    it "should output paragraphs" do
      f = FillerText.paragraphs 5
      # look for newlines
      expect(f.scan(/\n/).size).to eql 4
    end
  end
end
