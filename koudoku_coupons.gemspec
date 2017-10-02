$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "koudoku_coupons/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "koudoku_coupons"
  s.version     = KoudokuCoupons::VERSION
  s.authors     = ["Christoph Engelhardt"]
  s.email       = ["christoph@it-engelhardt.de"]
  s.homepage    = "http://www.it-engelhardt.de"
  s.summary     = "Adds capability for full Stripe coupons to Koudoku"
  s.description = "KoudokuCoupons allows you to use the full power of "

  s.files = Dir["{app,config,db,lib}/**/*"] + ["Rakefile", "README.md"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails"
  s.add_dependency 'koudoku'
  s.add_dependency 'haml-rails'
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
end
