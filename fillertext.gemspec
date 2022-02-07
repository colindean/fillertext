# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path("lib", __dir__)
require "fillertext/version"

Gem::Specification.new do |s|
  s.name = "fillertext"
  s.version = FillerText::VERSION
  s.authors = ["Colin Dean"]
  s.email = "git+gems@cad.cx"

  s.summary = "Generates filler/placeholder text in a Rubyistic way"
  s.description = "Generates filler text through a direct interface or by monkeypatching Fixnum"
  s.homepage = "http://github.com/colindean/fillertext"
  s.required_rubygems_version = ">= 2.6.0"

  s.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  s.bindir = "exe"
  s.executables = s.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.md"
  ]
  s.licenses = ["MIT"]

  s.add_development_dependency "rdoc", "~> 6.4"
  s.add_development_dependency "simplecov", "~> 0.21.2"

  s.required_ruby_version = ">= 2.6.0"
  s.metadata["rubygems_mfa_required"] = "true"
end
