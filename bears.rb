class Bear

  attr_accessor :name

  def initialize(name)
    @name = name
    @stomach = []
  end

  def stomach_count()
    return @stomach.compact.count()
  end

  def take_fish(fish)
    @stomach << fish
  end

  def roar()
    return "Roooaaarrr!!!"
  end


end
