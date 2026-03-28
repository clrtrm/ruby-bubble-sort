# ASSIGNMENT
# Build a method #bubble_sort that takes an array and returns a sorted array. It must use the bubble sort methodology (using #sort would be pretty pointless, wouldn’t it?).

# SOLUTION
def bubble_sort(numbers)
  loop do 
    swapped = false

    numbers.each_with_index do |cur_num, index|
      next_num = numbers[index + 1]

      if next_num && cur_num > next_num
        numbers[index], numbers[index + 1] = numbers[index + 1], numbers[index]
        swapped = true
      end
    end
    break unless swapped
  end

  numbers
end

# TEST
p bubble_sort([4, 3, 78, 2, 0, 2]) # [0, 2, 2, 3, 4, 78]