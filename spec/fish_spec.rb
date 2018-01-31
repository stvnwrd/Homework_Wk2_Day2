require('minitest/autorun')
require('minitest/rg')

require_relative('../fish.rb')
# require_relative('../river.rb')
# require_relative('../bears.rb')

class TestFish < MiniTest::Test

  def setup
    @fish = Fish.new("Finn")

  end

  def test_get_fish_name
    assert_equal("Finn", @fish.name)
  end


end
