require 'insertion_sort'

describe 'insertion_sort' do

  context '#insert' do
    it 'change the sorted array' do
      array = [1, 5]
      new_array = insert(array, 1, 2)
      expect(new_array).to eq([1, 2, 5])
    end
    it 'can not deal with empty array' do
      array = []
      expect{insert(array, 0, 2)}.to raise_error(NoMethodError)
    end
  end

  context '#insertion_sort' do
    it 'sort the unique array' do
      array = [3, 5, 4, 1, 7, 2]
      new_array = insertion_sort array
      expect(new_array).to eq([1, 2, 3, 4, 5, 7])
    end

    it 'sort array with duplicates' do
      array = [1, 1, 3, 7, 9, 8, 3, 1, 2]
      new_array = insertion_sort array
      expect(new_array).to eq([1, 1, 1, 2, 3, 3, 7, 8, 9])
    end
  end

end
