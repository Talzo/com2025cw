require 'test_helper'

class AdminTest < ActiveSupport::TestCase

# Invalid user entries do not get registered
  test 'should not save invalid user' do
    admin = Admin.new
    admin.save
    refute admin.valid?
  end

# Valid user entries get registered
  test 'should save valid user' do
    admin = Admin.new
    admin.email = 'bob@example.com'
    admin.password = '12345678'
    admin.save
    assert admin.valid?
  end
end
