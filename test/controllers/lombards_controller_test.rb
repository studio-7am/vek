require 'test_helper'

class LombardsControllerTest < ActionController::TestCase
  setup do
    @lombard = lombards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lombards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lombard" do
    assert_difference('Lombard.count') do
      post :create, lombard: { content: @lombard.content, description: @lombard.description, image: @lombard.image, name: @lombard.name }
    end

    assert_redirected_to lombard_path(assigns(:lombard))
  end

  test "should show lombard" do
    get :show, id: @lombard
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lombard
    assert_response :success
  end

  test "should update lombard" do
    patch :update, id: @lombard, lombard: { content: @lombard.content, description: @lombard.description, image: @lombard.image, name: @lombard.name }
    assert_redirected_to lombard_path(assigns(:lombard))
  end

  test "should destroy lombard" do
    assert_difference('Lombard.count', -1) do
      delete :destroy, id: @lombard
    end

    assert_redirected_to lombards_path
  end
end
