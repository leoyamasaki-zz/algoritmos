def selectionsort(list)
  list.size.times do |start|
    min = start
    start.upto(list.size-1) do |i|
      min = i if list[i] < list[min]
    end
    list[start], list[min] = list[min], list[start]
  end
  list
end

