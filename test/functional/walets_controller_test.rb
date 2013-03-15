require 'test_helper'

class WaletsControllerTest < ActionController::TestCase
  setup do
    @walet = walets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:walets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create walet" do
    assert_difference('Walet.count') do
      post :create, walet: {  }
    end

    assert_redirected_to walet_path(assigns(:walet))
  end

  test "should show walet" do
    get :show, id: @walet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @walet
    assert_response :success
  end

  test "should update walet" do
    put :update, id: @walet, walet: {  }
    assert_redirected_to walet_path(assigns(:walet))
  end

  test "should destroy walet" do
    assert_difference('Walet.count', -1) do
      delete :destroy, id: @walet
    end

    assert_redirected_to walets_path
  end
end
