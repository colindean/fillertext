# frozen_string_literal: true

require "fillertext"

RSpec.describe FillerText do
  describe "when changing filler text style" do
    it "uses LoremIpsum" do
      described_class.style = FillerText::Style::LoremIpsum
      t = "Lorem ipsum"
      expect(t.length.filler.characters).to eql t
    end

    it "uses HipsterIpsum" do
      described_class.style = FillerText::Style::HipsterIpsum
      t = "Hipster ipsum"
      expect(t.length.filler.characters).to eql t
    end

    it "uses YinzerIpsum" do
      t = "Yinzer ipsum"
      described_class.style = FillerText::Style::YinzerIpsum
      expect(t.length.filler.characters).to eql t
    end

    it "uses MikeLange" do
      t = "Mike Lange"
      described_class.style = FillerText::Style::MikeLange
      expect(t.length.filler.characters).to eql t
    end
  end
end
