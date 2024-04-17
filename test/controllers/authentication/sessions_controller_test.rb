require "test_helper"

class Authentication::SessionsControllerTest < ActionDispatch::IntegrationTest

    # Setup the user for the tests from the fixture
    def setup
        @user = users(:one)
    end

    test "should get new user" do
        get new_session_url
        assert_response :success
    end

    test "should redirect to login if user is not found" do
        post sessions_url, params: {username: 'not_found'}
        assert_redirected_to new_session_url
        assert_equal "Invalid username", flash[:alert]
    end

end
