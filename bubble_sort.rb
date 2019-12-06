# frozen_string_literal: true
def bubble_sort(arr)
  return arr if arr.size <= 1

  len = arr.size - 2
  while len > 1
    position = 0
    0.upto(len) do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        position = i
      end
    end
    len = position
  end
  arr
end

def bubble_sort_by(arr)
  return arr if arr.size <= 1

  len = arr.size - 1
  while len >= 1
    position = 0
    len.times do |i|
      comparison = yield arr[i], arr[i + 1]
      if comparison.positive?
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        position = i
      end
    end
    len = position
  end
  arr
end

arr = %w[hi hello hey]
print bubble_sort_by(arr) { |left, right| left.length - right.length }
unsorted = [10, 4, 6, 8, 5, 2, 4, 6, 8, 9, 22]
print bubble_sort unsorted
