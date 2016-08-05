require 'pry-byebug'

def insert(array, right_index, value)
    # value is the value of array[right_index + 1]
    # right_index is the furthest right sorted element

    # Step through sorted elements right to left.
    # As long as your value is less than the element
    # at array[i] and you still have elements
    i = right_index
    while(i >= 0 && array[i] > value)
        # copy the element
        array[i+1] = array[i]
        i -= 1
    end

    # insert the actual element
    array[i+1] = value;
    return array
end

def insertion_sort array
  # binding.pry
  sorted_array = [array[0]]
  array.shift
  until array.empty?
    value = array.shift
    right_index = sorted_array.length - 1
    sorted_array = insert(sorted_array, right_index, value)
  end
  sorted_array
end
