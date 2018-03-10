require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
  test 'invalid signup data' do
    get signup_path
    assert_no_difference 'User.count' do
      post users_path, params: { user: { name: '', email: 'test@invalid',
        password: 'test', password_confirmation: '123' } }
    end
    assert_template 'users/new'
    assert_select 'div.alert-danger'
    assert_select 'div.field_with_errors'
  end

  test 'valid signup data' do
    get signup_path
    assert_difference 'User.count', 1 do
      post users_path, params: { user: { name: 'User', email: 'test@valid.co',
        password: 'password', password_confirmation: 'password' } }
    end
    follow_redirect!
    assert_template 'users/show'
  end
end
