
require 'rails/generators'

module KoudokuCoupons
  class InstallGenerator < Rails::Generators::Base
    include Rails::Generators::Migration
    source_root "#{KoudokuCoupons::Engine.root}/app/views/koudoku_coupons/"
    desc "installs koudoku_coupons"
    
    def install
      unless defined?(KoudokuCoupons)
        gem 'koudoku_coupons'
      end
      
      # mounts KoudokuCoupons in the applications routes.rb file
      route "mount KoudokuCoupons::Engine, at: 'promotions'"
      
    end
    
    def copy_migrations
      rake("koudoku_coupons:install:migrations")
    end 
  end
end
