require 'test_helper'

class FavoritesControllerTest < ActionDispatch::IntegrationTest

  test "favorites index should redirect if not logged in" do
    get favorites_path
    assert_response :redirect
  end
end