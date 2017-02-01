def merge_sort(array)
  return array if array.length == 1
  midway = array.length / 2
  first_half = merge_sort(array[0..midway-1])
  second_half = merge_sort(array[midway..array.length])
  
  result = []
  while first_half.length != 0 && second_half.length != 0
    if first_half[0] < second_half[0]
      result << first_half.shift
    else
      result << second_half.shift
    end
  end
  result += first_half + second_half
  result
end

puts merge_sort([1, 3, 2, 4, 6, 12, 7, 8])