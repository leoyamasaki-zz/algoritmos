def bubble_sort(list)
  list = list.dup
  for i in 0...list.length
    for j in 0..(list.length - i - 2)
      list[j], list[j + 1] = list[j + 1], list[j]  if list[j + 1] < list[j]
     end
   end
   return list
 end


