require 'test_helper'

class RepresentantemsControllerTest < ActionController::TestCase
  setup do
    @representantem = representantems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:representantems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create representantem" do
    assert_difference('Representantem.count') do
      post :create, representantem: { nombre: @representantem.nombre }
    end

    assert_redirected_to representantem_path(assigns(:representantem))
  end

  test "should show representantem" do
    get :show, id: @representantem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @representantem
    assert_response :success
  end

  test "should update representantem" do
    patch :update, id: @representantem, representantem: { nombre: @representantem.nombre }
    assert_redirected_to representantem_path(assigns(:representantem))
  end

  test "should destroy representantem" do
    assert_difference('Representantem.count', -1) do
      delete :destroy, id: @representantem
    end

    assert_redirected_to representantems_path
  end
end
