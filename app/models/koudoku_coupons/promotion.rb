module KoudokuCoupons
  class Promotion < ActiveRecord::Base
    attr_accessible :coupon_code, :name, :redirect
  end
end
