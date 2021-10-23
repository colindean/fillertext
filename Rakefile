require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'
require 'rake/testtask'
require 'juwelier'
require 'simplecov'
require 'rdoc/task'

Juwelier::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "fillertext"
  gem.homepage = "http://github.com/colindean/fillertext"
  gem.license = "MIT"
  gem.summary = %Q{Generates filler/placeholder text in a Rubyistic way}
  gem.description = %Q{Generates filler text through a direct interface or by monkeypatching Fixnum}
  gem.email = "git+gems@cad.cx"
  gem.authors = ["Colin Dean"]
  # dependencies defined in Gemfile
end

Juwelier::RubygemsDotOrgTasks.new

Rake::TestTask.new(:spec) do |t|
  t.libs.push 'lib'
  t.test_files = FileList['spec/*_spec.rb']
  t.verbose = true
end

desc "Run :spec with code coverage"
task :coverage do
  `rake spec COVERAGE=true`
  `open coverage/index.html`
end

Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "fillertext #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

desc "Run irb session with loaded gem"
task :irb do
  exec 'irb -I lib -r fillertext'
end

task :default => :spec
