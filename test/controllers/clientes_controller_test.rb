require 'test_helper'

class ClientesControllerTest < ActionDispatch::IntegrationTest

  test "should get new" do
    get new_cliente_url
    assert_response :success
  end
  
end
