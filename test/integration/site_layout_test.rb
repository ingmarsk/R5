require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest

  test 'layout' do
    get root_path
    assert_template 'static_pages/home'
    assert_select 'meta[content="text/html; charset=UTF-8"]'
    assert_select 'title'
    assert_select 'div.container'
    assert_select 'a[href=?]', root_path, count: 2
    assert_select 'a[href=?]', help_path
    assert_select 'a[href=?]', about_path
    assert_select 'a[href=?]', contact_path
  end
end