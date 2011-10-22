module FillerText
  module Style
    class LoremIpsum
    end
  end
  
  class FillerText

    @@style = Style::LoremIpsum
  
    def self.style=(style)
      @@style
    end

    def self.style
      @@style
    end

    @@num = 0
  
    def self.n=(n)
      @@num = n
    end
    
    def self.n
      @@num
    end
  
    def self.bytes(n=nil)
      n ||= self.n
      "g" * n
    end
    
    def self.characters(n=nil)
      n ||= self.n
      #same thing for now
      self.bytes(n=nil)
    end
    
    def self.words(n=nil)
      n ||= self.n
      ""
    end
    
    def self.sentences(n=nil)
      n ||= self.n
      ""
    end
    
    def self.paragraphs(n=nil)
      n ||= self.n
      ""
    end
    
  end
end
