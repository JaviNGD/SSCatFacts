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

    test "should login an user by username" do
        post sessions_url, params: {username: @user.username}

        assert_redirected_to root_url
    end

end
