class River

  attr_accessor :name

  def initialize(name)
    @name = name
    @fish_in_river = []
  end

  def river_fish_count()
    return @fish_in_river.count()
  end

  def add_fish(fish)
    @fish_in_river << fish
  end

  def remove_fish()
    return @fish_in_river.pop
  end

end
