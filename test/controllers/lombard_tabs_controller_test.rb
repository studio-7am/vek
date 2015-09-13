require 'test_helper'

class LombardTabsControllerTest < ActionController::TestCase
  setup do
    @lombard_tab = lombard_tabs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lombard_tabs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lombard_tab" do
    assert_difference('LombardTab.count') do
      post :create, lombard_tab: { content: @lombard_tab.content, icon: @lombard_tab.icon, lombard_id: @lombard_tab.lombard_id, title: @lombard_tab.title }
    end

    assert_redirected_to lombard_tab_path(assigns(:lombard_tab))
  end

  test "should show lombard_tab" do
    get :show, id: @lombard_tab
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lombard_tab
    assert_response :success
  end

  test "should update lombard_tab" do
    patch :update, id: @lombard_tab, lombard_tab: { content: @lombard_tab.content, icon: @lombard_tab.icon, lombard_id: @lombard_tab.lombard_id, title: @lombard_tab.title }
    assert_redirected_to lombard_tab_path(assigns(:lombard_tab))
  end

  test "should destroy lombard_tab" do
    assert_difference('LombardTab.count', -1) do
      delete :destroy, id: @lombard_tab
    end

    assert_redirected_to lombard_tabs_path
  end
end
