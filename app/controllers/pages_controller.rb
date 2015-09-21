class PagesController < ApplicationController
  before_action :set_page, only: [:show, :edit, :update, :destroy]
  
  layout 'client'

  # GET /pages
  # GET /pages.json
  def index
    @pages = Page.all
    @tabs = Tab.all
  end

  # GET /pages/1
  # GET /pages/1.json
  def show
    @order = Order.new
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_page
      @page = Page.find(params[:id])
    end

end
