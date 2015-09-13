require 'test_helper'

class StoreTabsControllerTest < ActionController::TestCase
  setup do
    @store_tab = store_tabs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:store_tabs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create store_tab" do
    assert_difference('StoreTab.count') do
      post :create, store_tab: { content: @store_tab.content, icon: @store_tab.icon, store_id: @store_tab.store_id, title: @store_tab.title }
    end

    assert_redirected_to store_tab_path(assigns(:store_tab))
  end

  test "should show store_tab" do
    get :show, id: @store_tab
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @store_tab
    assert_response :success
  end

  test "should update store_tab" do
    patch :update, id: @store_tab, store_tab: { content: @store_tab.content, icon: @store_tab.icon, store_id: @store_tab.store_id, title: @store_tab.title }
    assert_redirected_to store_tab_path(assigns(:store_tab))
  end

  test "should destroy store_tab" do
    assert_difference('StoreTab.count', -1) do
      delete :destroy, id: @store_tab
    end

    assert_redirected_to store_tabs_path
  end
end
