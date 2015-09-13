class Backend::LombardOrdersController < ApplicationController
  before_action :set_lombard_order, only: [:show, :edit, :update, :destroy]

  # GET /lombard_orders
  # GET /lombard_orders.json
  def index
    @lombard_orders = LombardOrder.all
  end

  # GET /lombard_orders/1
  # GET /lombard_orders/1.json
  def show
  end

  # GET /lombard_orders/new
  def new
    @lombard_order = LombardOrder.new
  end

  # GET /lombard_orders/1/edit
  def edit
  end

  # POST /lombard_orders
  # POST /lombard_orders.json
  def create
    @lombard_order = LombardOrder.new(lombard_order_params)
    @lombard_order.lombard = Lombard.last

    respond_to do |format|
      if @lombard_order.save
        format.html { redirect_to root_path, notice: 'Lombard order was successfully created.' }
        format.json { render :show, status: :created, location: @lombard_order }
      else
        format.html { render :new }
        format.json { render json: @lombard_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lombard_orders/1
  # PATCH/PUT /lombard_orders/1.json
  def update
    respond_to do |format|
      if @lombard_order.update(lombard_order_params)
        format.html { redirect_to @lombard_order, notice: 'Lombard order was successfully updated.' }
        format.json { render :show, status: :ok, location: @lombard_order }
      else
        format.html { render :edit }
        format.json { render json: @lombard_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lombard_orders/1
  # DELETE /lombard_orders/1.json
  def destroy
    @lombard_order.destroy
    respond_to do |format|
      format.html { redirect_to backend_lombard_orders_url, notice: 'Lombard order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lombard_order
      @lombard_order = LombardOrder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lombard_order_params
      params.require(:lombard_order).permit(:number, :slug, :name, :phone, :email, :lombard_id, products_attributes: [:id, :name, :description, :price, :image, :lombard_order_id, :_destroy])
    end
end
