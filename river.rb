class River

  attr_reader :name, :fish_array

  def initialize(name,fishes)
    @name = name #you can just call it name, as it's in river class, so it's obvious it's river's name
    @fish_array = fishes
  end

  def do_we_have_fish_named(name)
    if @fish_array.include?(name)
      return name
    end
  end

  def loose_fish(fish)
      @fish_array.delete(fish)
      return @fish_array.count()
  end

#def give_fish()
#fish = @fish.pop()
#return fish
#end



end
