class LombardsController < ApplicationController
  before_action :set_lombard, only: [:show, :edit, :update, :destroy]

  # GET /lombards
  # GET /lombards.json
  def index
    @lombards = Lombard.all
  end

  # GET /lombards/1
  # GET /lombards/1.json
  def show
  end

  # GET /lombards/new
  def new
    @lombard = Lombard.new
  end

  # GET /lombards/1/edit
  def edit
  end

  # POST /lombards
  # POST /lombards.json
  def create
    @lombard = Lombard.new(lombard_params)

    respond_to do |format|
      if @lombard.save
        format.html { redirect_to @lombard, notice: 'Lombard was successfully created.' }
        format.json { render :show, status: :created, location: @lombard }
      else
        format.html { render :new }
        format.json { render json: @lombard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lombards/1
  # PATCH/PUT /lombards/1.json
  def update
    respond_to do |format|
      if @lombard.update(lombard_params)
        format.html { redirect_to :back, notice: 'Lombard was successfully updated.' }
        format.json { render :show, status: :ok, location: @lombard }
      else
        format.html { render :edit }
        format.json { render json: @lombard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lombards/1
  # DELETE /lombards/1.json
  def destroy
    @lombard.destroy
    respond_to do |format|
      format.html { redirect_to lombards_url, notice: 'Lombard was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lombard
      @lombard = Lombard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lombard_params
      params.require(:lombard).permit(:name, :description, :content, :image)
    end
end
