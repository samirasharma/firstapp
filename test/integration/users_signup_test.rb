require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest

  test "valid signup information" do
    get signup_path
    assert_difference 'User.count', 1 do
      post_via_redirect users_path, user: { name:  "samira",
                                            email: "samira.sharma@outlook.com",
                                            password:              "ddddddd",
                                           }
    end
    assert_template 'users/show'
    end
end