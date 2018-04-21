require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get home_index_url
    assert_response :success
  end

  test "should get issue" do
    get home_issue_url
    assert_response :success
  end

  test "should get report" do
    get home_report_url
    assert_response :success
  end

end
