require 'rubygems'
require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'
require 'echoe'

desc 'Default: run unit tests.'
task :default => :test

desc 'Test the should_pricot plugin.'
Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.libs << 'test'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
end

desc 'Generate documentation for the should_pricot plugin.'
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'ShouldPricot'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

Echoe.new('should_pricot', '1.0.0') do |p|
  p.description     = "Hpricot powered html testing"  
  p.url             = "http://github.com/brentgreeff/should_pricot"  
  p.author          = "Brent Greeff"  
  p.email           = ""
  p.ignore_pattern  = ["init.rb", "install.rb", "uninstall.rb"]  
  p.development_dependencies = []
end  
  
Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }