require 'test_helper'

class TattoosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tattoos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tattoo" do
    assert_difference('Tattoo.count') do
      post :create, :tattoo => { }
    end

    assert_redirected_to tattoo_path(assigns(:tattoo))
  end

  test "should show tattoo" do
    get :show, :id => tattoos(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => tattoos(:one).to_param
    assert_response :success
  end

  test "should update tattoo" do
    put :update, :id => tattoos(:one).to_param, :tattoo => { }
    assert_redirected_to tattoo_path(assigns(:tattoo))
  end

  test "should destroy tattoo" do
    assert_difference('Tattoo.count', -1) do
      delete :destroy, :id => tattoos(:one).to_param
    end

    assert_redirected_to tattoos_path
  end
end
