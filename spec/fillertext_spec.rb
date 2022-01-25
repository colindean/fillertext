# frozen_string_literal: true

RSpec.describe FillerText do
  it "has a version number" do
    expect(FillerText::VERSION).not_to be nil
  end

  it "should generate some text" do
    puts FillerText.sentences 1
  end

  # FillerText.words 2
  #   FillerText.characters 5
  #   FillerText.bytes 4
  #   FillerText.paragraphs 1

  #   2.filler.sentences
  #   1.filler.paragraphs

  #   FillerText.style = FillerText::LoremIpsum
  #   FillerText.style = FillerText::HipsterIpsum
  #   FillerText.style = FillerText::YinzerIpsum
  # end
end
