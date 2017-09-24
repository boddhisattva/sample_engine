$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "sample_engine/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "sample_engine"
  s.version     = SampleEngine::VERSION
  s.authors     = ["Mohnish G J"]
  s.email       = ["mail4mohnish@gmail.com"]
  s.homepage    = "http://samplesite.com"
  s.summary     = "A Sample Engine"
  s.description = "A Sample Engine to show how to setup of RSpec, FactoryGirl and Spring"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency 'rails'

  s.add_development_dependency 'factory_girl_rails'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'sqlite3'
end
