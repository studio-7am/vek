class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
   protect_from_forgery with: :exception

    #before_filter :authenticate_user! 
  
    before_filter :authenticate if Rails.env.production?

	protected

	def authenticate
	  authenticate_or_request_with_http_basic do |username, password|
	    username == "vladimirr" && password == "vek"
	  end
	end

end
