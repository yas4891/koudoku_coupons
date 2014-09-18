module KoudokuCoupons
  class Engine < ::Rails::Engine
    isolate_namespace KoudokuCoupons
    
    # loads KoudokuCoupons::ApplicationHelper into ::ApplicationController
    # so we can use #koudoku_coupons_controller? in the main_app
    initializer 'load_koudoku_coupons_helpers' do 
      ActiveSupport.on_load(:action_controller) do 
        include KoudokuCoupons::ApplicationHelper
      end
    end 
  end
end
