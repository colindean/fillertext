module FillerText
  #this has to be here because of file require order issues
  #todo: fix this
  module Style; class LoremIpsum; end; end
  
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
      self.style.text[0,n]
    end
    
    def self.characters(n=nil)
      #same thing for now
      self.bytes(n)
    end
    
    def self.words(n=nil)
      n ||= self.n
      #the idea here is to find the nth space and return everything before it
      self.style.text.split[0,n].join(" ").gsub(/[^\w\s]/,'')
    end
    
    def self.sentences(n=nil)
      n ||= self.n
      self.style.text.split('.').slice(0,n).join(". ")
    end
    
    def self.paragraphs(n=nil)
      n ||= self.n
      self.style.text.split("\n").slice(0,n).join("\n")
    end
    
  end
end
