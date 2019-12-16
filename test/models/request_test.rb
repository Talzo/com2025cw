require 'test_helper'

class RequestTest < ActiveSupport::TestCase

# Tests validations
  test "the truth" do
    assert true
  end

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

# Delete a request
  test 'should delete request' do
    request = Request.new(body: "MyText")
    request.destroy
  end
end
