module KoudokuCoupons
  module ApplicationHelper
    # returns TRUE if the controller belongs to KoudokuCoupons
    # false in all other cases, for convenience when executing filters 
    # in the main application
    def koudoku_coupons_controller? 
      is_a? KoudokuCoupons::ApplicationController
    end
  end
end
