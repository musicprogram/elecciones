require 'test_helper'

class RepresentantetsControllerTest < ActionController::TestCase
  setup do
    @representantet = representantets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:representantets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create representantet" do
    assert_difference('Representantet.count') do
      post :create, representantet: { nombre: @representantet.nombre }
    end

    assert_redirected_to representantet_path(assigns(:representantet))
  end

  test "should show representantet" do
    get :show, id: @representantet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @representantet
    assert_response :success
  end

  test "should update representantet" do
    patch :update, id: @representantet, representantet: { nombre: @representantet.nombre }
    assert_redirected_to representantet_path(assigns(:representantet))
  end

  test "should destroy representantet" do
    assert_difference('Representantet.count', -1) do
      delete :destroy, id: @representantet
    end

    assert_redirected_to representantets_path
  end
end
