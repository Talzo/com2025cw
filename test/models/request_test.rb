require 'test_helper'

class RequestTest < ActiveSupport::TestCase

# Empty requests do not get sent
  test 'should not save empty request' do
    request = Request.new

    request.save
    refute request.valid?
  end

# Non-empty requests get sent
  test 'should save valid request' do
    request = Request.new

    request.body = 'This is an example.'

    request.save
    assert request.valid?
  end
end
