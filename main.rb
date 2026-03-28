# ASSIGNMENT
# Build a method #bubble_sort that takes an array and returns a sorted array. It must use the bubble sort methodology (using #sort would be pretty pointless, wouldn’t it?).

# SOLUTION
def bubble_sort(numbers)
  numbers.length.times do 
    numbers.each_with_index do |number, index|
      next_num = numbers[index + 1]

      if next_num && number > next_num
        numbers[index] = next_num
        numbers[index + 1] = number
      end
    end
  end
  numbers
end

# TEST
p bubble_sort([4, 3, 78, 2, 0, 2]) # [0, 2, 2, 3, 4, 78]