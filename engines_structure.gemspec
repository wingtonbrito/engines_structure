$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "engines_structure/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "engines_structure"
  s.version     = EnginesStructure::VERSION
  s.authors     = ["wingtonbrito"]
  s.email       = ["wingtonbrito@gmail.com"]
  s.homepage    = "https://github.com/wingtonbrito"
  s.summary     = "https://github.com/wingtonbrito: Summary of EnginesStructure."
  s.description = "https://github.com/wingtonbrito: Description of EnginesStructure."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.5.2"
  #TUTORIAL: 1. Include every engines to the host engine
  s.add_dependency 'shop', s.version
  s.add_dependency 'tree', s.version
  s.add_dependency 'core', s.version
  s.add_dependency 'backend', s.version
  s.add_dependency 'frontend', s.version

  s.add_development_dependency "sqlite3"

end
