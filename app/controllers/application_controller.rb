class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
    protect_from_forgery with: :exception

    #before_filter :authenticate_user! 

    before_action :set_lombard
    before_action :set_store

    def set_lombard
      if Lombard.all.count === 0 
      	Lombard.create
      else
      	@lombard = Lombard.last
      end
    end

    def set_store
      if Store.all.count === 0 
        Store.create
      else
        @store = Store.last
      end
    end

	protected

	def authenticate
	  authenticate_or_request_with_http_basic do |username, password|
	    username == "admin" && password == "admin"
	  end
	end

end
