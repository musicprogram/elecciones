require 'test_helper'

class EleccionesControllerTest < ActionController::TestCase
  test "should get salir" do
    get :salir
    assert_response :success
  end

end
