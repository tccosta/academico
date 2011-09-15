require 'test_helper'

class TrumasControllerTest < ActionController::TestCase
  setup do
    @truma = trumas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trumas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create truma" do
    assert_difference('Truma.count') do
      post :create, :truma => @truma.attributes
    end

    assert_redirected_to truma_path(assigns(:truma))
  end

  test "should show truma" do
    get :show, :id => @truma.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @truma.to_param
    assert_response :success
  end

  test "should update truma" do
    put :update, :id => @truma.to_param, :truma => @truma.attributes
    assert_redirected_to truma_path(assigns(:truma))
  end

  test "should destroy truma" do
    assert_difference('Truma.count', -1) do
      delete :destroy, :id => @truma.to_param
    end

    assert_redirected_to trumas_path
  end
end
