require "test_helper"

class TasksControllerTest < ActionDispatch::IntegrationTest
  test "should get complete" do
    get tasks_complete_url
    assert_response :success
  end
end
