# frozen_string_literal: true

require "fillertext"

RSpec.describe FillerText do
  describe "when explicitly called" do
    before { described_class.style = FillerText::Style::LoremIpsum }

    it "outputs sentences" do
      expect(described_class.sentences(5).scan(".").size).to be 4
    end

    it "outputs words" do
      expect(described_class.words(5)).to eql "Lorem ipsum dolor sit amet"
    end

    it "outputs characters" do
      expect(described_class.characters(5)).to eql "Lorem"
    end

    it "outputs bytes" do
      expect(described_class.bytes(5)).to eql "Lorem"
    end

    it "outputs paragraphs" do
      expect(described_class.paragraphs(5).scan("\n").size).to be 4
    end
  end
end
