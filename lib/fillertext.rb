require_relative 'fillertext/fillertext'
require_relative 'fillertext/fixnum'

#also, load the styles

Dir[File.dirname(__FILE__) + File::SEPARATOR + 'fillertext/styles/*.rb'].each{ |file| require file }

