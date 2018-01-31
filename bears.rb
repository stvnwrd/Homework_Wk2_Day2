class Bear

  attr_accessor :name, :stomach

  def initialize(name)
    @name = name
    @stomach = []
  end

  def stomach_count()
    return @stomach.count()
  end

  def take_fish(fish)
    @stomach << fish
    # @fish_in_river
  end

  def roar()
    return "Roooaaarrr!!!"
  end


end

end
