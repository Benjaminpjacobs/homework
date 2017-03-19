gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../sorting_suite'

class BubbleSortTest < Minitest::Test
  def test_it_exists
    sorter = SortingSuite::BubbleSort.new
  end
  def test_with_2
    sorter = SortingSuite::BubbleSort.new
    to_sort = [2,1]
    expected = [1,2]
    result = sorter.sort(to_sort)
    assert_equal expected, result
  end
  def test_with_2_non_consecutive
    sorter = SortingSuite::BubbleSort.new
    to_sort = [15,6]
    expected = [6,15]
    result = sorter.sort(to_sort)
    assert_equal expected, result
  end
  def test_with_3
    sorter = SortingSuite::BubbleSort.new
    to_sort = [3,1,2]
    expected = [1,2,3]
    result = sorter.sort(to_sort)
    assert_equal expected, result
  end
  def test_with_3_non_consecutive
    sorter = SortingSuite::BubbleSort.new
    to_sort = [20, 46, 21]
    expected = [20, 21, 46]
    result = sorter.sort(to_sort)
    assert_equal expected, result
  end
  def test_with_4
    sorter = SortingSuite::BubbleSort.new
    to_sort = [5,3,4,2]
    expected = [2,3,4,5]
    result = sorter.sort(to_sort)
    assert_equal expected, result
  end
  def test_with_4_non_consecutive
    sorter = SortingSuite::BubbleSort.new
    to_sort = [16,91,2,46]
    expected = [2,16,46,91]
    result = sorter.sort(to_sort)
    assert_equal expected, result
  end
  def test_with_7
    sorter = SortingSuite::BubbleSort.new
    to_sort = [5,3,4,1,6,7,2]
    expected = [1,2,3,4,5,6,7]
    result = sorter.sort(to_sort)
    assert_equal expected, result
  end
  def test_with_two_same_digits
    sorter = SortingSuite::BubbleSort.new
    to_sort = [5,6,3,4,1,6,7,2]
    expected = [1,2,3,4,5,6,6,7]
    result = sorter.sort(to_sort)
    assert_equal expected, result
  end
  def test_with_large_random
    sorter = SortingSuite::BubbleSort.new
    to_sort = (1..1000).to_a.sample(20)
    expected = to_sort.sort
    result = sorter.sort(to_sort)
    assert_equal expected, result
  end
  def test_with_letters
    sorter = SortingSuite::BubbleSort.new
    to_sort = ("a".."z").to_a.sample(10)
    expected = to_sort.sort
    result = sorter.sort(to_sort)
    assert_equal expected, result
  end
end

