class BuyerController < ApplicationController
  def page
    @car = Car.find(params[:car_id])
    @seller = Seller.find(params[:seller_id])
  end

  def payment
    #update the cars table with buyers id
    #update the join table with seller and buyer id
    # buyers id - current_user.profile.buyer
    # seller id - @car.seller_id
    # car id - params[:car_id]
    puts "--------payment------"
    puts params
    
    @buyer = Buyer.find_by(profile_id: current_user.profile.id)
    @car = Car.find(params[:car_id])
    @buyer.cars << @car
    @seller = @car.seller
    @buyer.sellers << @seller
   
    # @selle`r = @car.seller
   
    # @buyer.seller << @seller
    #redirect back to the car showpage
    redirect_to @car, notice: "payment successful"
  end
end
