require 'test_helper'

class RepresentantefsControllerTest < ActionController::TestCase
  setup do
    @representantef = representantefs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:representantefs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create representantef" do
    assert_difference('Representantef.count') do
      post :create, representantef: { nombre: @representantef.nombre }
    end

    assert_redirected_to representantef_path(assigns(:representantef))
  end

  test "should show representantef" do
    get :show, id: @representantef
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @representantef
    assert_response :success
  end

  test "should update representantef" do
    patch :update, id: @representantef, representantef: { nombre: @representantef.nombre }
    assert_redirected_to representantef_path(assigns(:representantef))
  end

  test "should destroy representantef" do
    assert_difference('Representantef.count', -1) do
      delete :destroy, id: @representantef
    end

    assert_redirected_to representantefs_path
  end
end
