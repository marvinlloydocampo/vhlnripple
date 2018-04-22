require 'test_helper'

class IssuesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @issue = issues(:one)
  end

  test "should get index" do
    get issues_url
    assert_response :success
  end

  test "should get new" do
    get new_issue_url
    assert_response :success
  end

  test "should create issue" do
    assert_difference('Issue.count') do
      post issues_url, params: { issue: { assigned_developer_id: @issue.assigned_developer_id, assigned_tester_id: @issue.assigned_tester_id, client_name: @issue.client_name, cycle_count: @issue.cycle_count, days_per_cycle: @issue.days_per_cycle, issue_type_id: @issue.issue_type_id, release_date: @issue.release_date, status_id: @issue.status_id } }
    end

    assert_redirected_to issue_url(Issue.last)
  end

  test "should show issue" do
    get issue_url(@issue)
    assert_response :success
  end

  test "should get edit" do
    get edit_issue_url(@issue)
    assert_response :success
  end

  test "should update issue" do
    patch issue_url(@issue), params: { issue: { assigned_developer_id: @issue.assigned_developer_id, assigned_tester_id: @issue.assigned_tester_id, client_name: @issue.client_name, cycle_count: @issue.cycle_count, days_per_cycle: @issue.days_per_cycle, issue_type_id: @issue.issue_type_id, release_date: @issue.release_date, status_id: @issue.status_id } }
    assert_redirected_to issue_url(@issue)
  end

  test "should destroy issue" do
    assert_difference('Issue.count', -1) do
      delete issue_url(@issue)
    end

    assert_redirected_to issues_url
  end
end
