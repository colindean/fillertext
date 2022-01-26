# frozen_string_literal: true

module FillerText
  # Modification for Integer class
  module Integer
    def filler
      FillerText.nos = self
      FillerText
    end
  end
end

class Integer
  include FillerText::Integer
end
