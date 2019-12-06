def bubble_sort arr
  return arr if arr.size <= 1
  len = arr.size-2
  swapped = true
  while len > 1
    position = 0
    0.upto(len) do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i +1] = arr[i+ 1], arr[i]
        position = i
      end
    end
    len = position
  end
  arr
end

print bubble_sort [10,4,6,8,5,2,4,6,8,9,22]