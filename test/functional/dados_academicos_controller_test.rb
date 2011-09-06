require 'test_helper'

class DadosAcademicosControllerTest < ActionController::TestCase
  setup do
    @dados_academico = dados_academicos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dados_academicos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dados_academico" do
    assert_difference('DadosAcademico.count') do
      post :create, :dados_academico => @dados_academico.attributes
    end

    assert_redirected_to dados_academico_path(assigns(:dados_academico))
  end

  test "should show dados_academico" do
    get :show, :id => @dados_academico.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @dados_academico.to_param
    assert_response :success
  end

  test "should update dados_academico" do
    put :update, :id => @dados_academico.to_param, :dados_academico => @dados_academico.attributes
    assert_redirected_to dados_academico_path(assigns(:dados_academico))
  end

  test "should destroy dados_academico" do
    assert_difference('DadosAcademico.count', -1) do
      delete :destroy, :id => @dados_academico.to_param
    end

    assert_redirected_to dados_academicos_path
  end
end
