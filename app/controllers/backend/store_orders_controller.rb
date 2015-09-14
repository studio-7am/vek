class Backend::StoreOrdersController < ApplicationController
  before_action :set_store_order, only: [:show, :edit, :update, :destroy]
  layout 'client', only: :new
  # GET /store_orders
  # GET /store_orders.json
  def index
    @store_orders = StoreOrder.all
  end

  # GET /store_orders/1
  # GET /store_orders/1.json
  def show
  end

  # GET /store_orders/new
  def new
    @product = Product.find(params[:product_id])
    @store_order = StoreOrder.new
  end

  # GET /store_orders/1/edit
  def edit
  end

  # POST /store_orders
  # POST /store_orders.json
  def create
    @store_order = StoreOrder.new(store_order_params)

    respond_to do |format|
      if @store_order.save
        format.html { redirect_to @store_order, notice: 'Store order was successfully created.' }
        format.json { render :show, status: :created, location: @store_order }
      else
        format.html { render :new }
        format.json { render json: @store_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /store_orders/1
  # PATCH/PUT /store_orders/1.json
  def update
    respond_to do |format|
      if @store_order.update(store_order_params)
        format.html { redirect_to @store_order, notice: 'Store order was successfully updated.' }
        format.json { render :show, status: :ok, location: @store_order }
      else
        format.html { render :edit }
        format.json { render json: @store_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /store_orders/1
  # DELETE /store_orders/1.json
  def destroy
    @store_order.destroy
    respond_to do |format|
      format.html { redirect_to backend_store_orders_path, notice: 'Store order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_store_order
      @store_order = StoreOrder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def store_order_params
      params.require(:store_order).permit(:number, :slug, :name, :phone, :email, :product_id)
    end
end
