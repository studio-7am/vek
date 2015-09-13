require 'test_helper'

class LombardOrdersControllerTest < ActionController::TestCase
  setup do
    @lombard_order = lombard_orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lombard_orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lombard_order" do
    assert_difference('LombardOrder.count') do
      post :create, lombard_order: { email: @lombard_order.email, name: @lombard_order.name, number: @lombard_order.number, phone: @lombard_order.phone, slug: @lombard_order.slug }
    end

    assert_redirected_to lombard_order_path(assigns(:lombard_order))
  end

  test "should show lombard_order" do
    get :show, id: @lombard_order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lombard_order
    assert_response :success
  end

  test "should update lombard_order" do
    patch :update, id: @lombard_order, lombard_order: { email: @lombard_order.email, name: @lombard_order.name, number: @lombard_order.number, phone: @lombard_order.phone, slug: @lombard_order.slug }
    assert_redirected_to lombard_order_path(assigns(:lombard_order))
  end

  test "should destroy lombard_order" do
    assert_difference('LombardOrder.count', -1) do
      delete :destroy, id: @lombard_order
    end

    assert_redirected_to lombard_orders_path
  end
end
