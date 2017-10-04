require('minitest/autorun')
require('minitest/rg')
require_relative('../bear.rb')
require_relative('../river.rb')
require_relative('../fish.rb')

class TestBear < MiniTest::Test
@bear

  #bear with an empty stomach
  def setup
    @bear = Bear.new("Charles", [])


#fish_1 = Fish.new("Tuna Turner") need to define fish first, because you are putting it into the river later
#@fish_2 = Fish.new("Margaret")
#fish = [fish_1, fish_2]
#@river = River.new("Forth", fish)
#end

  end

#def test_bear_stomach_empty
#assert_equal(0, @bear.stomach_empty.count())
#end

#def test_bear_can_take_fish_from_river
#@bear.test_bear_can_take_fish_from_river(@river.fish_number)
#assert_equal(1, @bear.stomach.count)
#end



  def test_roar
    result = @bear.roar("RRR")
    assert_equal("RRR", result)
  end


end
