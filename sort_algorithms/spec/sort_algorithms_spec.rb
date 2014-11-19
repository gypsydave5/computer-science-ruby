require 'spec_helper'
require 'sort_algorithms'

describe 'sort algorithms' do

  array1 = [3,17,2,45,235,84,28]
  sorted_array1 = [2,3,17,28,45,84,235]
  array2 = [5,66,9,56,2,3427,322,3565869,34]
  sorted_array2 = array2.sort


  it 'can do selection sort' do
    expect(array1.selection_sort).to eql sorted_array1
    expect(array2.selection_sort).to eql sorted_array2
  end


  it 'can do selection sort' do
    expect(array1.insertion_sort).to eql sorted_array1
    expect(array2.insertion_sort).to eql sorted_array2
  end

end