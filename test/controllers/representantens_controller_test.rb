require 'test_helper'

class RepresentantensControllerTest < ActionController::TestCase
  setup do
    @representanten = representantens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:representantens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create representanten" do
    assert_difference('Representanten.count') do
      post :create, representanten: { nombre: @representanten.nombre }
    end

    assert_redirected_to representanten_path(assigns(:representanten))
  end

  test "should show representanten" do
    get :show, id: @representanten
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @representanten
    assert_response :success
  end

  test "should update representanten" do
    patch :update, id: @representanten, representanten: { nombre: @representanten.nombre }
    assert_redirected_to representanten_path(assigns(:representanten))
  end

  test "should destroy representanten" do
    assert_difference('Representanten.count', -1) do
      delete :destroy, id: @representanten
    end

    assert_redirected_to representantens_path
  end
end
