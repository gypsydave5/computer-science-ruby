class Array

  @@selection_comparisons = 0
  @@insertion_comparisons = 0

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

  def self.comparison_totals
    puts "Selection: #{@@selection_comparisons}"
    puts "Insertion: #{@@insertion_comparisons}"
  end


end
