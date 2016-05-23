require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get contactUs" do
    get :contactUs
    assert_response :success
  end

  test "should get aboutUs" do
    get :aboutUs
    assert_response :success
  end

  test "should get privacyPolicy" do
    get :privacyPolicy
    assert_response :success
  end

  test "should get termsAndCoditions" do
    get :termsAndCoditions
    assert_response :success
  end

  test "should get disclaimer" do
    get :disclaimer
    assert_response :success
  end

  test "should get sitemap" do
    get :sitemap
    assert_response :success
  end

end
