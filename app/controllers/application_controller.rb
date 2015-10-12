class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
    protect_from_forgery with: :exception

    #before_filter :authenticate_user! 

    before_action :set_lombard
    before_action :set_store
    before_action :set_social

    def set_social
      if Social.all.count === 0
        Social.create("name": "Twitter", "icon": "fa fa-twitter-square fa-large", "url": "#")
        Social.create("name": "Facebook", "icon": "fa fa-facebook-official", "url": "#")
        Social.create("name": "Instagram", "icon": "fa fa-instagram", "url": "#")
        Social.create("name": "Odnoklassniki", "icon": "fa fa-odnoklassniki-square", "url": "#")
      else
        @icons = Social.all
      end
    end

    def set_lombard
      
      @lombard_tabs = LombardTab.all
      @store_tabs = StoreTab.all

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
	    username == "vek" && password == "Vek12599663399125"
	  end
	end

end
