class LombardTabsController < ApplicationController
  before_action :set_lombard_tab, only: [:show, :edit, :update, :destroy]


  # GET /lombard_tabs
  # GET /lombard_tabs.json
  def index
    @lombard_tabs = LombardTab.all
  end

  # GET /lombard_tabs/1
  # GET /lombard_tabs/1.json
  def show
  end

  # GET /lombard_tabs/new
  def new
    @lombard_tab = LombardTab.new
  end

  # GET /lombard_tabs/1/edit
  def edit
  end

  # POST /lombard_tabs
  # POST /lombard_tabs.json
  def create
    @lombard_tab = LombardTab.new(lombard_tab_params)

    respond_to do |format|
      if @lombard_tab.save
        format.html { redirect_to lombard_tabs_url, notice: 'Таб в ломбарде создан.' }
        format.json { render :show, status: :created, location: @lombard_tab }
      else
        format.html { render :new }
        format.json { render json: @lombard_tab.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lombard_tabs/1
  # PATCH/PUT /lombard_tabs/1.json
  def update
    respond_to do |format|
      if @lombard_tab.update(lombard_tab_params)
        format.html { redirect_to lombard_tabs_url, notice: 'Таб в ломбарде обновлен.'}
        format.json { render :show, status: :ok, location: @lombard_tab }
      else
        format.html { render :edit }
        format.json { render json: @lombard_tab.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lombard_tabs/1
  # DELETE /lombard_tabs/1.json
  def destroy
    @lombard_tab.destroy
    respond_to do |format|
      format.html { redirect_to lombard_tabs_url, notice: 'Lombard tab was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lombard_tab
      @lombard_tab = LombardTab.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lombard_tab_params
      params.require(:lombard_tab).permit(:title, :content, :icon, :lombard_id, :bootsy_image_gallery_id)
    end
end
