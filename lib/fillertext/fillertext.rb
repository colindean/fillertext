# frozen_string_literal: true

Dir["./lib/fillertext/styles/*.rb"].sort.each { |file| require file }

# Helper module to choose styles and number
module FillerText
  class << self
    attr_accessor :style, :num
  end

  def self.nos=(nos)
    @num = nos
  end

  def self.nos
    @num
  end

  def self.bytes(nos = nil)
    nos ||= self.nos
    style.text[0, nos]
  end

  def self.characters(nos = nil)
    bytes(nos)
  end

  def self.words(nos = nil)
    nos ||= self.nos
    style.text.split[0, nos].join(" ").gsub(/[^\w\s]/, "")
  end

  def self.sentences(nos = nil)
    nos ||= self.nos
    style.text.split(".").slice(0, nos).join(". ")
  end

  def self.paragraphs(nos = nil)
    nos ||= self.nos
    style.text.split("\n").slice(0, nos).join("\n")
  end

  @style = Style::LoremIpsum
  @num = 0
end
