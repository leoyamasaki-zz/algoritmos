def shell_sort(items)
  inc = items.size / 2
  while inc > 0
    inc.upto(items.size-1){|i|
      j = i
      temp = items[i]
      while j >= inc and items[j-inc] > temp
        items[j] = items[j - inc]
        j -= inc
      end
      items[j] = temp
    }
    inc = (inc==2 ? 1 : inc*10/22)
  end
  items
end
