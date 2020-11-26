require 'test_helper'

class TsubuyakisControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tsubuyakis_index_url
    assert_response :success
  end

end
