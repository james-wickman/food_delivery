class ApplicationController < ActionController::Base
 	protect_from_forgery with: :exception

 	before_action :set_client
 	def set_client
		@client = WalmartOpen::Client.new do |config|
			 ## Product API
			 config.product_api_key = "ukb53p4n4yuh5g8dt7eaasaw"
			 # Set this to true for development mode.
			 config.debug = true
		end 		
 	end

end
