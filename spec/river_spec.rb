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
    assert_equal(0, @river.river_fish_count)
  end

  def test_river_fish_count
    assert_equal(0, @river.river_fish_count)
  end

  def test_can_add_fish
    fish = Fish.new("Finn")
    @river.add_fish(fish)
    assert_equal(1, @river.river_fish_count)
  end

  def test_can_remove_fish
    fish = Fish.new("Sam_Awn")
    @river.add_fish(fish)
    fish_removed = @river.remove_fish()
    assert_equal(0, @river.river_fish_count)
    assert_equal("Sam_Awn", fish_removed.name)
  end

end
