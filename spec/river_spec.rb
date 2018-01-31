require('minitest/autorun')
require('minitest/rg')

require_relative('../river.rb')
# require_relative('../bears.rb')
require_relative('../fish.rb')

class TestRiver < MiniTest::Test

  def setup
    @river = River.new("Kelvin")

  end

  def test_get_river_name
    assert_equal("Kelvin", @river.name)
  end

  def test_default_number_of_fish
    assert_equal(3, @river.river_fish_count)
  end

  def test_river_fish_count
    assert_equal(3, @river.river_fish_count)
  end

end
