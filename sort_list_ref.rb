class SortList
  def initialize(array)
    @array = array
  end

  def largest
    @array.sort.last
  end
end
