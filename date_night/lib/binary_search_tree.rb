require_relative "node"
require 'pry'

class BinarySearchTree
  attr_accessor :root

  def initialize
    @root = nil
  end
  def insert(rating, title)
    if root.nil?
      @root = Node.new({rating => title})
      return 0
    else
      find_next_node({rating=>title})
    end
  end
  def find_next_node(data, node=root, depth = 1 )
    # binding.pry
    level = depth
    if node.data.keys[0] > data.keys[0] && node.left.nil?
      node.left = Node.new(data)
      return depth
    elsif node.data.keys[0] < data.keys[0] && node.right.nil?
      node.right = Node.new(data)
      return depth
    elsif node.data.keys[0] > data.keys[0]
      level += 1
      find_next_node(data, node.left, level)
    else
      level += 1
      find_next_node(data, node.right, level)
    end
  end
  def include?(rating, node=root)
    # binding.pry
    return false if node.nil?
    return true if node.data.keys[0] == rating

    if rating > node.data.keys[0]
      include?(rating, node.right)
    elsif
      rating < node.data.keys[0]
      include?(rating, node.left)
    end
  end

  def depth_of(value, node=root, depth=0)
    level = depth
    return nil if node.nil?
    return level if node.data.keys[0] == value
    
    if node.data.keys[0] > value
      level += 1
      depth_of(value, node.left, level)
    else
      level += 1
      depth_of(value, node.right, level)
    end
  end
end