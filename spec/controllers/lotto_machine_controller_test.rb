require 'test_helper'

class LottoMachineControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get lotto_machine_create_url
    assert_response :success
  end

end
