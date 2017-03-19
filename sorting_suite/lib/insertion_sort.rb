class InsertionSort
  attr_accessor :sort_array

  def initialize
    @sort_array = []
  end

  def sort(unsorted)
    create_sort_array(unsorted)
    sort_numbers(sort_array, unsorted)
    sort_array
  end
  
  def create_sort_array(array)
    sort_array << array.shift
  end
  
  def sort_numbers(sorted, unsorted)
    (unsorted.length).times do
      single_pass(sorted, unsorted)
    end
  end

  def single_pass(sorted, unsorted)
    sorted.each_with_index do |item, idx|
      if item > unsorted[0]
        sorted.insert(idx, unsorted.shift) 
        break
      elsif item == sorted.last
        sorted.insert(-1, unsorted.shift) 
        break
      end
    end
  end
    
end