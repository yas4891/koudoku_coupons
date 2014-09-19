module KoudokuCoupons
  class PromotionsController < KoudokuCoupons::ApplicationController
    
    def index
      @promotions = Promotion.all
    end
    
    def new
      @promotion = Promotion.new
    end
    
    def create
      @promotion = Promotion.new(params[:promotion])
      
      respond_to do |format|
        if @promotion.save
          
          format.html { redirect_to promotions_path, notice: 'Promotion was successfully created.' }
          format.json { render json: @promotion, status: :created, location: @promotion}
        else
          format.html { render action: "new" }
          format.json { render json: @promotion.errors, status: :unprocessable_entity }
        end
      end
    end
    
    def destroy
      @promotion = Promotion.find(params[:id])
      @promotion.destroy
      redirect_to promotions_path
    end
    
    def edit
      @promotion = Promotion.find(params[:id])
    end
    
    def update
      @promotion = Promotion.find(params[:id])
      
      respond_to do |format|
        if @promotion.update_attributes(params[:promotion])
          format.html { redirect_to promotions_path, notice: 'Promotion was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: "edit" }
          format.json { render json: @promotion.errors, status: :unprocessable_entity }
        end
      end
    end
    
    def show
      return redirect_to main_app.root_path, status: 302 if params[:id].nil? || params[:id] == ''
      @promotion = Promotion.find_by_name(params[:id])
      
      return redirect_to main_app.root_path, status: 302 if @promotion.nil?
      session[:koudoku_coupon_code] = @promotion.coupon_code
      redirect_to @promotion.redirect, status: 302
    end
  end
end
