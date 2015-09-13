class StoreTabsController < ApplicationController
  before_action :set_store_tab, only: [:show, :edit, :update, :destroy]

  # GET /store_tabs
  # GET /store_tabs.json
  def index
    @store_tabs = StoreTab.all
  end

  # GET /store_tabs/1
  # GET /store_tabs/1.json
  def show
  end

  # GET /store_tabs/new
  def new
    @store_tab = StoreTab.new
  end

  # GET /store_tabs/1/edit
  def edit
  end

  # POST /store_tabs
  # POST /store_tabs.json
  def create
    @store_tab = StoreTab.new(store_tab_params)

    respond_to do |format|
      if @store_tab.save
        format.html { redirect_to @store_tab, notice: 'Store tab was successfully created.' }
        format.json { render :show, status: :created, location: @store_tab }
      else
        format.html { render :new }
        format.json { render json: @store_tab.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /store_tabs/1
  # PATCH/PUT /store_tabs/1.json
  def update
    respond_to do |format|
      if @store_tab.update(store_tab_params)
        format.html { redirect_to @store_tab, notice: 'Store tab was successfully updated.' }
        format.json { render :show, status: :ok, location: @store_tab }
      else
        format.html { render :edit }
        format.json { render json: @store_tab.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /store_tabs/1
  # DELETE /store_tabs/1.json
  def destroy
    @store_tab.destroy
    respond_to do |format|
      format.html { redirect_to store_tabs_url, notice: 'Store tab was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_store_tab
      @store_tab = StoreTab.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def store_tab_params
      params.require(:store_tab).permit(:title, :content, :icon, :store_id)
    end
end
