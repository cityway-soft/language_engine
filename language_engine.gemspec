$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "language_engine/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "language_engine"
  s.version     = LanguageEngine::VERSION
  s.authors     = ["Marc Florisson", "Luc Donnet"]
  s.email       = ["mflorisson@cityway.fr", "ldonnet@cityway.fr"]      
  s.homepage    = "https://github.com/dryade/language_engine.git"
  s.summary     = "Rails engine to support language change."
  s.description = "Rails engine to support language change."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", "~> 4.1.1"
  # s.add_dependency "jquery-rails"  
  s.add_development_dependency "rspec-rails", '~> 3.1.0'
  s.add_development_dependency "sqlite3"
end
