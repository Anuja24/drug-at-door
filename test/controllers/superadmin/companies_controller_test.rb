require 'test_helper'

class Superadmin::CompaniesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get superadmin_companies_index_url
    assert_response :success
  end

end
