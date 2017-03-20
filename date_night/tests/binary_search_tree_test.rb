gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/binary_search_tree'

class BinarySearchTreeTest < Minitest::Test
  def test_it_exists
    tree = BinarySearchTree.new
  end
  def test_can_make_root_node
    tree = BinarySearchTree.new
    expected = {61 => "Bill & Ted's Excellent Adventure"}
    assert_equal 0, tree.insert(61, "Bill & Ted's Excellent Adventure")
    assert_equal expected, tree.root.data
  end
  def test_it_can_add_second_node
    tree = BinarySearchTree.new
    tree.insert(61, "Bill & Ted's Excellent Adventure")
    assert_equal 1, tree.insert(16, "Johnny English")
    assert_nil tree.root.right
    assert_equal tree.root.left.data, {16 => "Johnny English"}
  end
  def test_it_can_add_third_node
    tree = BinarySearchTree.new
    tree.insert(61, "Bill & Ted's Excellent Adventure")
    tree.insert(16, "Johnny English")
    assert_equal 1, tree.insert(92, "Sharknado 3")
    assert_equal tree.root.right.data, {92=> "Sharknado 3"}
  end
  def test_it_can_add_fourth_node
    tree = BinarySearchTree.new
    tree.insert(61, "Bill & Ted's Excellent Adventure")
    tree.insert(16, "Johnny English")
    tree.insert(92, "Sharknado 3")
    assert_equal 2, tree.insert(50, "Hannibal Buress: Animal Furnace") 
    assert_equal tree.root.left.right.data, {50 => "Hannibal Buress: Animal Furnace"}
    assert_nil tree.root.left.left
  end
  def test_include?
    tree = BinarySearchTree.new
    tree.insert(61, "Bill & Ted's Excellent Adventure")
    tree.insert(16, "Johnny English")
    tree.insert(92, "Sharknado 3")
    tree.insert(50, "Hannibal Buress: Animal Furnace") 
    tree.insert(55, "This movie doesn't matter")
    assert tree.include?(16)
    assert tree.include?(50)
    refute tree.include?(72)
    assert tree.include?(55)

  end

end