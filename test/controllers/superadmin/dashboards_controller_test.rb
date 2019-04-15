require 'test_helper'

class Superadmin::DashboardsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get superadmin_dashboards_index_url
    assert_response :success
  end

end
