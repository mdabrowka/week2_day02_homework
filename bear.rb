class Bear

attr_reader :name #:bear_stomach

  def initialize(name, bear_tummy# you don't need it here, as )
    @name = name
    @bear_tummy = [] #every new bear has an empty stomach hard code
  end

  def swallow_fish(ingested_fish)
    @bear_tummy << ingested_fish
    return @bear_tummy.count
  end


#def take_fish(river)
#fish = river.give_fish()
#@stomach.push(fish)
#end

  def roar(sound)
    return sound
  end



end
