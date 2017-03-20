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
  def find_next_node(data, node=root, level = 1 )
    # binding.pry
    depth = level
    if node.data.keys[0] > data.keys[0] && node.left.nil?
      node.left = Node.new(data)
      return depth
    elsif node.data.keys[0] < data.keys[0] && node.right.nil?
      node.right = Node.new(data)
      return depth
    elsif node.data.keys[0] > data.keys[0]
      depth += 1
      find_next_node(data, node.left, depth)
    else
      depth += 1
      find_next_node(data, node.right, depth)
    end
  end
end