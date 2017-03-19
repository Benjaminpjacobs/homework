class MergeSort
  
  def sort(array)
    return array if array.length <= 1
    left = []
    right = []
    divide_into_left_and_right(left, right, array)
    left = sort(left)
    right = sort(right)
    merge(left, right)
  end

  def divide_into_left_and_right(left, right, array)
    array.each_with_index do |item, idx|
      if idx < (array.length / 2)
        left << item
      else
        right << item
      end
    end
  end

  def merge(left, right)
    result = []
    initial_merge(left, right, result)
    clean_up_merge(left, right, result)
    result
  end

  def initial_merge(left, right, array)
    while !left.empty? && !right.empty?
      if left.first < right.first
        array << left.shift
      else
        array << right.shift
      end
    end
  end

  def clean_up_merge(left, right, array)
    if left.empty?
      fill_in(right, array)
    else
      fill_in(left, array)
    end
  end

  def fill_in(from_array, to_array)
    to_array << from_array.shift until from_array.empty?
  end

end
