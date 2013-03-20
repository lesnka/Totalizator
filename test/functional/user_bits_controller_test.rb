require 'test_helper'

class UserBitsControllerTest < ActionController::TestCase
  setup do
    @user_bit = user_bits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_bits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_bit" do
    assert_difference('UserBit.count') do
      post :create, user_bit: { bit_id: @user_bit.bit_id, user_id: @user_bit.user_id }
    end

    assert_redirected_to user_bit_path(assigns(:user_bit))
  end

  test "should show user_bit" do
    get :show, id: @user_bit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_bit
    assert_response :success
  end

  test "should update user_bit" do
    put :update, id: @user_bit, user_bit: { bit_id: @user_bit.bit_id, user_id: @user_bit.user_id }
    assert_redirected_to user_bit_path(assigns(:user_bit))
  end

  test "should destroy user_bit" do
    assert_difference('UserBit.count', -1) do
      delete :destroy, id: @user_bit
    end

    assert_redirected_to user_bits_path
  end
end
