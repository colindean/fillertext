# frozen_string_literal: true

RSpec.describe FillerText do
  describe "when changing filler text style" do
    it "should use LoremIpsum" do
      FillerText.style = FillerText::Style::LoremIpsum
      t = "Lorem ipsum"
      expect(t.length.filler.characters).to eql t
    end

    it "should use HipsterIpsum" do
      FillerText.style = FillerText::Style::HipsterIpsum
      t = "Hipster ipsum"
      expect(t.length.filler.characters).to eql t
    end

    it "should use YinzerIpsum" do
      t = "Yinzer ipsum"
      FillerText.style = FillerText::Style::YinzerIpsum
      expect(t.length.filler.characters).to eql t
    end

    it "should use MikeLange" do
      t = "Mike Lange"
      FillerText.style = FillerText::Style::MikeLange
      expect(t.length.filler.characters).to eql t
    end
  end
end
