class BackendController < ApplicationController
  before_filter :authenticate if Rails.env.production?
  
  def index
  end

  def lombard_settings
     
  end

end
