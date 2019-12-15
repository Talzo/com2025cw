require 'test_helper'
require 'generators/home/home_generator'

class HomeGeneratorTest < Rails::Generators::TestCase
  tests HomeGenerator
  destination Rails.root.join('tmp/generators')
  setup :prepare_destination

  # test "generator runs without errors" do
  #   assert_nothing_raised do
  #     run_generator ["arguments"]
  #   end
  # end
end
