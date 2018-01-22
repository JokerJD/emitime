require 'test_helper'

class BiosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bios_index_url
    assert_response :success
  end

end
