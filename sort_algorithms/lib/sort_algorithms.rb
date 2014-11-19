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
      temp = self[i]
      self[i] = self[minimum_position]
      self[minimum_position] = temp
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
          temp = self[j]
          self[j] = self[j - 1]
          self[j - 1] = temp
        else
          complete = true
        end
        j += j
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
          temp = self[j]
          self[j]  = self[i]
          self[i] = temp
        end
      end
    end

    puts "bubble: #{@@bubble_comparisons}"
    self

  end

  def radix_sort

    max_length = self.map(&:to_s).max_by(&:length).length
    self.map!{ |number| number.to_s.rjust(max_length, "0") }

    array = []

    for i in 0...max_length
      buckets = {}
      for j in "0".."9"
        buckets[j] = []
      end
      for j in 0...self.length
        number = self[j]
        digit = number[max_length - i - 1]
        buckets[digit].push number
      end
    array  = buckets.values.flatten
    end

    array.map(&:to_i)

  end

  def self.comparison_totals
    puts "Selection: #{@@selection_comparisons}"
    puts "Insertion: #{@@insertion_comparisons}"
  end

end
