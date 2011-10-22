module FillerText
  module Fixnum
  
    def filler
      FillerText.n = self
      FillerText
    end

  end
end

class Fixnum
  include FillerText::Fixnum
end
