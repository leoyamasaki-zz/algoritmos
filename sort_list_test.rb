require 'test/unit'
require 'sort_list'
class SortTest < Test::Unit::TestCase
  def test_positive_list
    array = [ 9, 8, 7, 25, 6, 19, 22]
    list = SortList.new(array) 
    assert_equal list.largest, 25
  end

  def test_negative_list
    array = [-9, -3, -8, -1]
    list = SortList.new(array) 
    assert_equal list.largest, -1
  end
end
