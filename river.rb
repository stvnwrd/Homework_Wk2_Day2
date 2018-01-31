class River

  attr_accessor :name, :fish_in_river

  def initialize(name)
    @name = name
    @fish_in_river = ["Finn", "Sam", "Trout"]
  end

  def river_fish_count()
    return @fish_in_river.count()
  end

end
