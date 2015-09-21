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

  def store
    @products = Product.all.where(:lombard_order_id => nil)
  end


end
