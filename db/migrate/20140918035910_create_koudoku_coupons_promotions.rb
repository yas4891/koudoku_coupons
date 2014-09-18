class CreateKoudokuCouponsPromotions < ActiveRecord::Migration
  def change
    create_table :koudoku_coupons_promotions do |t|
      t.string :name
      t.string :coupon_code
      t.string :redirect

      t.timestamps
    end
  end
end
