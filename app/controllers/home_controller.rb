class HomeController < ApplicationController
    before_action :authenticate_user! 


 
	def index

	end

 	def send_package
 		@package=Package.new
 		@package.weight=params["weight"]
 		@package.senders_address=params["senders_address"]
 		@package.recievers_address=params["recievers_address"]
 		@package.pickup_time=Time.now.to_s.split(" ")[0]+" "+Time.now.to_s.split(" ")[1]
 		# @package.distance=calculate distance
 		# @package.price=params["price"]
 		@package.recievers_phone_number = params["recievers_phone_number"]
 		@package.recievers_email=params["recievers_email"]
 		@package.senders_id=current_user.id
 		if @package.save
 			respond_to do |format|
 				format.html{redirect_to "/",notice:"Order successfully created"}
 				format.js{

 				}
 			end
 		end
 	end
 	def display_packages
 		@packages=Package.all
 	end
	def deliver_package

 	end
	
end
