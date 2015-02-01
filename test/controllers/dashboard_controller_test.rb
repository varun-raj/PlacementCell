require 'test_helper'

class DashboardControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get events" do
    get :events
    assert_response :success
  end

  test "should get students" do
    get :students
    assert_response :success
  end

  test "should get departement" do
    get :departement
    assert_response :success
  end

end
