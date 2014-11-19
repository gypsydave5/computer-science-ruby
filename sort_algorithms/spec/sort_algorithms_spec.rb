require 'spec_helper'
require 'sort_algorithms'

describe 'sort algorithms' do

  let(:array1) { [3,17,2,45,235,84,28] }
  let(:array2) { [5,66,9,56,2,3427,322,3565869,34] }
  let(:sorted_array1) { [2,3,17,28,45,84,235] }
  let(:sorted_array2) { array2.sort }

  it 'can do selection sort' do
    expect(array1.selection_sort).to eql sorted_array1
    expect(array2.selection_sort).to eql sorted_array2
  end


  it 'can do insertion sort' do
    expect(array1.insertion_sort).to eql sorted_array1
    expect(array2.insertion_sort).to eql sorted_array2
  end

  it 'can do bubble sort' do
    expect(array1.bubble_sort).to eql sorted_array1
    expect(array2.bubble_sort).to eql sorted_array2
  end

  it 'can do radix sort' do
    expect(array1.radix_sort).to eql sorted_array1
    expect(array2.radix_sort).to eql sorted_array2
  end
end