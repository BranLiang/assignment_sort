def bubble_sort array
  array.length.times do
    array.each_index do |index|
      if index < array.length - 1 && array[index + 1] < array[index]
        array[index], array[index + 1] = array[index + 1], array[index]
      end
    end
  end
  array
end
