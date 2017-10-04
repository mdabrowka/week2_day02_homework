require('minitest/autorun')
require('minitest/rg')
require_relative('../fish.rb')

class TestFish < MiniTest::Test


  def setup
    @fish1 = Fish.new("Solomon")
    @fish2 = Fish.new("Barry")
    @fish3 = Fish.new("Miranda")
  end

def test_fish_has_name
  assert_equal("Solomon", @fish1.name)
end


end
