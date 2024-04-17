require "test_helper"

class Authentication::UsersControllerTest < ActionDispatch::IntegrationTest

    test "should get new user" do
        get new_user_url
        assert_response :success
    end

    test "should create user" do
        assert_difference("User.count") do
            post users_url, params: { user: {username: 'Nat'}}
        end

        assert_redirected_to root_url
    end

    test "should not create user if already exists" do
        assert_no_difference("User.count") do
            post users_url, params: { user: {username: users(:one).username}}
        end
    end

end
