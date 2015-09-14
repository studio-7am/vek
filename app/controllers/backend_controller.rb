class BackendController < ApplicationController
  before_filter :authenticate if Rails.env.production?
  
  def index
    @socials = Social.all
  end

  def lombard_settings
     
  end

  def store_settings
  end

end
