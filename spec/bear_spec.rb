require('minitest/autorun')
require('minitest/rg')

require_relative('../bears.rb')
require_relative('../river.rb')
require_relative('../fish.rb')

class TestBear < MiniTest::Test

  def setup
    @bear = Bear.new("Barry")
    @fish = Fish.new("Finn")
  end

  def test_get_bear_name()
    assert_equal("Barry", @bear.name)
  end

  def test_stomach_count()
    @bear.take_fish(@fish)
    assert_equal(1, @bear.stomach_count)
  end

  def test_empty_stomach_default()
    assert_equal(0, @bear.stomach_count)
  end

  def test_take_fish()
    @bear.take_fish(@fish)
    assert_equal(1, @bear.stomach_count())
  end

  def test_roar()
    assert_equal("Roooaaarrr!!!", @bear.roar())
  end

  def test_can_remove_from_river

    @bear.remove_from_river(@river)

    assert_equal(1, @bear.stomach_count())
    assert_equal(2, @river.river_fish_count())
  end

end
