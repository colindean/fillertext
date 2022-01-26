# frozen_string_literal: true

Dir[File.join(__dir__, "styles/*.rb")].sort.each { |file| require_relative file }

# Helper module to choose styles
module FillerText
  class << self
    attr_accessor :style, :num
  end

  @style = FillerText::Style::LoremIpsum

  def self.bytes(num = nil)
    num ||= self.num
    style.text[0, num]
  end

  def self.characters(num = nil)
    bytes(num)
  end

  def self.words(num = nil)
    num ||= self.num
    style.text.split[0, num].join(" ").gsub(/[^\w\s]/, "")
  end

  def self.sentences(num = nil)
    num ||= self.num
    style.text.split(".").slice(0, num).join(". ")
  end

  def self.paragraphs(num = nil)
    num ||= self.num
    style.text.split("\n").slice(0, num).join("\n")
  end
end
