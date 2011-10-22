require 'minitest/autorun'
begin; require 'turn'; rescue LoadError; rescue RuntimeError; end
require_relative '../lib/fillertext'

describe FillerText do
  
  describe "when explicity called" do
    include FillerText
    it "should output sentences" do
      f = FillerText.sentences 5
      #look for the periods
      f.scan(/\./).size.must_equal 5
    end

    it "should output words" do
      f = FillerText.words 5
      #look for four spaces
      f.scan(/\s/).size.must_equal 5
      f.must_equal "Lorem ipsum dolor sit amet"
    end
    
    it "should output characters" do
      f = FillerText.characters 5    
      f.length.must_equal 5
      f.must_equal "Lorem"
    end
    
    it "should output bytes" do
      f = FillerText.bytes 5
      f.length.must_equal 5 
      f.must_equal "Lorem"
    end
    
    it "should output paragraphs" do
      f = FillerText.paragraphs 5
      #look for newlines
      f.scan(/\n/).size.must_equal 5
    end
  end
  
  describe "when called from an integer" do
    include FillerText

    it "should output sentences" do
      f = 2.filler.sentences 
      #look for the periods
      f.scan(/\./).size.must_equal 5  
    end

    it "should output words" do
      f = 2.filler.words  
      #look for four spaces
      f.scan(/\s/).size.must_equal 5
      f.must_equal "Lorem ipsum dolor sit amet"
    end
    
    it "should output characters" do
      f = 2.filler.characters 
      f.length.must_equal 5
      f.must_equal "Lorem"  
    end
    
    it "should output bytes" do
      f = 2.filler.bytes  
      f.length.must_equal 5
      f.must_equal "Lorem"
    end
    
    it "should output paragraphs" do
      f = 2.filler.paragraphs
      #look for newlines
      f.scan(/\n/).size.must_equal 5  
    end
  end
  
  describe "when changing filler text style" do
    include FillerText

    it "should use LoremIpsum by default" do
      t = "Lorem ipsum"
      t.length.filler.characters.must_equal t
    end
  
    it "should use hipster ipsum" do
      FillerText.style = Style::HipsterIpsum
      t = "Hipster ipsum"
      t.length.filler.characters.must_equal t
    end
    
    it "should use yinzer ipsum" do
      t = "Yinzer ipsum"
      FillerText.style = Style::YinzerIpsum  
      t.length.filler.characters.must_equal t
    end

    #add more styles here
    
  end    
    
end
