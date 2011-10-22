require 'minitest/autorun'
require_relative '../lib/fillertext'

class FillerTextTest < MiniTest::Unit::TestCase

  def setup

  end

  test "should generate some text" do
    FillerText.sentences 5
    FillerText.words 2
    FillerText.characters 5
    FillerText.bytes 4
    FillerText.paragraphs 1

    2.filler.sentences
    1.filler.paragraphs


    FillerText.style = FillerText::LoremIpsum
    FillerText.style = FillerText::HipsterIpsum
    FillerText.style = FillerText::YinzerIpsum
  end
	
end
