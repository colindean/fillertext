require 'minitest/autorun'
begin; require 'turn'; rescue LoadError; rescue RuntimeError; end
require_relative '../lib/fillertext'

describe FillerText do

  describe "when explicity called" do
    it "should output sentences" do
      f = FillerText.sentences 5    
    end

    it "should output words" do
      f = FillerText.words 5    
    end
    
    it "should output characters" do
      f = FillerText.characters 5    
    end
    
    it "should output bytes" do
      f = FillerText.bytes 5    
    end
    
    it "should output paragraphs" do
      f = FillerText.paragraphs 5    
    end
  end
  
  describe "when called from an integer" do

    it "should output sentences" do
      f = 2.filler.sentences   
    end

    it "should output words" do
      f = 2.filler.words  
    end
    
    it "should output characters" do
      f = 2.filler.characters   
    end
    
    it "should output bytes" do
      f = 2.filler.bytes  
    end
    
    it "should output paragraphs" do
      f = 2.filler.paragraphs   
    end
  end
  
  describe "when changing filler text style" do
  
    it "should use hipster ipsum" do
      FillerText.style = FillerText::HipsterIpsum
      t = "Hipster ipsum"
      t.length.filler.characters.must_equal t
    end
    
    it "should use yinzer ipsum" do
      t = "Yinzer ipsum"
      FillerText.style = FillerText::YinzerIpsum  
      t.length.filler.characters.must_equal t
    end
    
    it "should use LoremIpsum by default" do
      t = "Lorem ipsum"
      t.length.filler.characters.must_equal t
    end

    #add more styles here
    
  end    
    
end
