class Array

  @@selection_comparisons = 0
  @@insertion_comparisons = 0
  @@bubble_comparisons = 0

  def selection_sort

    @@selection_comparisons = 0

    for i in 0...((self.size) - 1)
      minimum_position = i
      for j in (i + 1)...self.size
        @@selection_comparisons += 1
        if self[j] < self[minimum_position]
          minimum_position = j
        end
      end
      switch_position(self, i, minimum_position)
    end

    puts "selection: #{@@selection_comparisons}"
    self

  end

  def insertion_sort

    @@insertion_comparisons =  0

    for i in 0...self.size
      j = i
      complete = false
      while (j > 0) and (not complete)
        @@insertion_comparisons += 1
        if self[j] < self[j - 1]
          switch_position(self, j, j - 1)
        else
          complete = true
        end
        j -= 1
      end
    end

    puts "insertion: #{@@insertion_comparisons}"
    self

  end

  def bubble_sort

    for i in 0...(self.size - 1)
      for j in (i + 1)...(self.size)
        @@bubble_comparisons += 1
        if self[j] < self[i]
          switch_position(self, i, j)
        end
      end
    end

    puts "bubble: #{@@bubble_comparisons}"
    self

  end

  def radix_sort

    max_length = self.map(&:to_s).max_by(&:length).length
    array = self.map{ |number| number.to_s.rjust(max_length, "0") }
    for i in 0...max_length
      buckets = {}
      for j in "0".."9"
        buckets[j] = []
      end
      for j in 0...self.length
        number = array[j]
        digit = number[max_length - i - 1]
        buckets[digit] << number
      end
      array = buckets.values.flatten
    end

    array.map(&:to_i)

  end

  def switch_position(array, position_one, position_two)
    temp = array[position_one]
    array[position_one] = array[position_two]
    array[position_two] = temp
  end

  def self.comparison_totals
    puts "Selection: #{@@selection_comparisons}"
    puts "Insertion: #{@@insertion_comparisons}"
  end

end
