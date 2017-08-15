require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get pages_home_url
    assert_response :success
  end

  test "should get about" do
    get pages_about_url
    assert_response :success
  end

  test "should get leadership" do
    get pages_leadership_url
    assert_response :success
  end

  test "should get donors" do
    get pages_donors_url
    assert_response :success
  end

  test "should get partners" do
    get pages_partners_url
    assert_response :success
  end

  test "should get team" do
    get pages_team_url
    assert_response :success
  end

  test "should get newsroom" do
    get pages_newsroom_url
    assert_response :success
  end

  test "should get jobs" do
    get pages_jobs_url
    assert_response :success
  end

  test "should get faq" do
    get pages_faq_url
    assert_response :success
  end

  test "should get support" do
    get pages_support_url
    assert_response :success
  end

  test "should get mentors" do
    get pages_mentors_url
    assert_response :success
  end

  test "should get newyork" do
    get pages_newyork_url
    assert_response :success
  end

  test "should get california" do
    get pages_california_url
    assert_response :success
  end

  test "should get privacy" do
    get pages_privacy_url
    assert_response :success
  end

  test "should get terms" do
    get pages_terms_url
    assert_response :success
  end

  test "should get community" do
    get pages_community_url
    assert_response :success
  end

end
