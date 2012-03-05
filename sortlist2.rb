class SortList
  def initialize(array)
    @array = array
  end

  def largest
    prev = nil
    j = nil
    for i in @array
      if prev != nil
        if i > prev
          j = i
        end
      end
      prev = i
    end
    return j
  end
  
end
#array = [ 9, 8, 7, 25, 6, 19, 22]
#array = [-9, -3, -8, -1]
#list = SortList.new(array) 
#puts  list.largest

