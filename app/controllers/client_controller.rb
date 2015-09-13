class ClientController < ApplicationController
  
  before_action :set_pages

  def set_pages
  	@pages = Page.all
  end

  def index
  end

  def lombard
  	@lombard_order = LombardOrder.new
  end


end
