require('minitest/autorun')
require('minitest/rg')

require_relative('../bears.rb')
require_relative('../fish.rb')
require_relative('../river.rb')

class TestBear < MiniTest::Test

  def setup
    @bear = Bear.new("Barry")
  end

  def test_get_bear_name()
    assert_equal("Barry", @bear.name)
  end

  # def test_stomach_count()
  #   fish = Fish.new("Eel_I")
  #   @bear.take_fish(fish)
  #   assert_equal(1, @bear.stomach_count)
  # end

  def test_empty_stomach_default()
    assert_equal(0, @bear.stomach_count)
  end

  def test_take_fish()
    fish = Fish.new("Fred")
    @bear.take_fish(fish)
    assert_equal(1, @bear.stomach_count())
  end

  def test_roar()
    assert_equal("Roooaaarrr!!!", @bear.roar())
  end

  def test_can_remove_from_river
    river = River.new("Kelvin")
    fish = Fish.new("Trout")
    river.add_fish(fish)

    @bear.take_fish(river.remove_fish())

    assert_equal(1, @bear.stomach_count())
    assert_equal(0, river.river_fish_count())
  end

  def test_bear_cant_eat_fish_from_empty_river
    river = River.new("Kelvin")

    @bear.take_fish(river.remove_fish())

    assert_equal(0, @bear.stomach_count())
    assert_equal(0, river.river_fish_count())

  end

end
