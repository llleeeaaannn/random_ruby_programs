def bubble_sort(array)
  not_sorted = true
  while not_sorted
    count = 0
    array.each_with_index do |value, index|
      if array[index + 1] == nil
          next
      elsif value > array[index + 1]
        array[index] = array[index + 1]
        array[index + 1] = value
        count += 1
      end
    end
    if count == 0
      not_sorted = false
    end
  end
  return array
end

# Build a method #bubble_sort that takes an array and returns a sorted array.
