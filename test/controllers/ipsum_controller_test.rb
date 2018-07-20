require 'test_helper'

class IpsumControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ipsum_index_url
    assert_response :success
  end

end
