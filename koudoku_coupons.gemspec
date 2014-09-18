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

  s.files = Dir["{app,config,db,lib}/**/*"] + ["Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", "~> 3.2.19"
  s.add_dependency 'koudoku', '~> 0.0.11'
  s.add_dependency 'haml-rails', '~> 0.4.0'
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
end
