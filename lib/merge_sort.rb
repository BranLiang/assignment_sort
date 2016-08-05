def mergeSort array
  l = array.length
  return array if l == 1
  left_half = array[0..l/2 - 1]
  right_half = array[l/2..-1]
  left_merge = mergeSort left_half
  right_merge = mergeSort right_half
  merge left_merge, right_merge
end

def merge(first, second)
  result = []
  while first.any? || second.any?
    if first.empty?
      result << second.shift
    elsif second.empty?
      result << first.shift
    elsif first[0] > second[0]
      result << second.shift
    else
      result << first.shift
    end
  end
  result
end
