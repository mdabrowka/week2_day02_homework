require('minitest/autorun')
require('minitest/rg')
require_relative('../river.rb')
require_relative('../fish.rb')
require_relative('../bear.rb')

class TestRiver < MiniTest::Test


def setup

  # three fish
  @fish1 = Fish.new("Solomon")
  @fish2 = Fish.new("Barry")
  @fish3 = Fish.new("Miranda")

  #fish array
  @fish_array =[@fish1.name,@fish2.name,@fish3.name]

  #new river with our fish array
  @river = River.new("Mississippi",@fish_array)

#do you want a river with just name or with the fish array?
#if you're giving your river a name you need to write a test
#to show it returns a name
# def setup
#fish_1 = Fish.new("Tuna Turner")
#@fish_2 = Fish.new("Margaret")
#fish = [fish_1, fish_2]
#@river = River.new("Forth", fish)
#end


  #new bear
  @bear = Bear.new("Winston", [])

end

  #def test_loose_fish
  #  result = @river.loose_fish("Miranda")
  #  assert_equal(0, result)
  #end

def test_new_fish
  assert_equal("Solomon", @fish1.name)
  assert_equal("Barry", @fish2.name)
  assert_equal("Miranda", @fish3.name)
end

def test_new_river
  assert_equal("Mississippi", @river.name)
  assert_equal("Solomon", @river.do_we_have_fish_named("Solomon"))
  assert_equal("Barry", @river.do_we_have_fish_named("Barry"))
  assert_equal("Miranda", @river.do_we_have_fish_named("Miranda"))
end

def do_we_have_fish_named
  assert_equal("Miranda", @river.catch_fish("Miranda"))
end

def test_swallow_fish
  assert_equal(1, @bear.swallow_fish(@river.do_we_have_fish_named("Miranda")))
end



#def test_river_can_give_fish()
#result = @river.give_fish()
#assert_equal(@fish_2,result)
#assert_equal(1, @river.fish.count())
#end
end
