class BackendController < ApplicationController
  before_filter :authenticate if Rails.env.production?
  
  def index
  end
end
