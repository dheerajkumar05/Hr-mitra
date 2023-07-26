require "test_helper"

class PageControllerTest < ActionDispatch::IntegrationTest
  test "should get about_us" do
    get page_about_us_url
    assert_response :success
  end

  test "should get contact_us" do
    get page_contact_us_url
    assert_response :success
  end

  test "should get privacy_policy" do
    get page_privacy_policy_url
    assert_response :success
  end

  test "should get Term_and_condition" do
    get page_Term_and_condition_url
    assert_response :success
  end
end
