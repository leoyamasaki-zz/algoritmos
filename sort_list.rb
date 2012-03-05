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
          prev = i
        else
          j = prev
          prev = j
        end
      else
      prev = i
      end
    end
    return j
  end
  
end
