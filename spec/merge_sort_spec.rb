require 'merge_sort'

describe 'mergeSort' do
  it 'sort the array' do
    array = [1, 3, 7, 2, 5]
    new_array = mergeSort array
    expect(new_array).to eq([1, 2, 3, 5, 7])
  end
end
