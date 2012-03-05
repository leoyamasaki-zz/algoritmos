def insertion_sort(array)
  array.each_with_index do |el,i|
    j = i - 1
    while j >= 0
      break if array[j] <= el
      array[j + 1] = array[j]
      j -= 1
    end
    array[j + 1] = el
  end
end
