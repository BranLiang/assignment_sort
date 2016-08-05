require 'bubble_sort'

describe 'bubble_sort' do
  it 'sort the array' do
    array = [1, 3, 7, 2, 5]
    new_array = bubble_sort array
    expect(new_array).to eq([1, 2, 3, 5, 7])
  end
end
