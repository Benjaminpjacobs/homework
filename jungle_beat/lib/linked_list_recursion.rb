require_relative 'node'

class LinkedList
  attr_accessor :head, :count
  
  def initialize
    @head = nil
  end

  def append(data)
    if @head.nil?
      @head = Node.new(data)
      @head.data   
    else
      @head.tail_node.next = Node.new(data)
      @head.tail_node.data
    end
  end

  def find(first, number)
    range_collect_items(go_to_node(first), number)
  end

  def to_string(start=@head)
    collect_items(start).join(' ')
  end

  def collect_items(node=@head, array=[])
    collected = array
    if node.next.nil? 
      collected << node.data
    else
      collected << node.data
      collect_items(node.next, collected)
    end
    collected
  end
  
  def range_collect_items(node, number, array=[])
    collected = array
    if collected.length == (number-1) || node.next.nil?
      collected << node.data
    else
      collected << node.data
     range_collect_items(node.next, number, collected)
    end
    collected.join(' ')
  end

  def include?(value)
    collect_items.include?(value)
  end

  def pop
    vestige = @head.tail_node.data
    go_to_node(count-2).next = nil
    vestige
  end

  def count
    if @head.nil?
      0
    else
      counter
    end
  end

  def counter(node=@head, counts=0)
    idx = counts
    if node.next.nil?
      idx += 1
      return idx
    else
      idx += 1
      counter(node.next, idx)
    end
  end

  def prepend(data)
    temp = Node.new(nil)
    temp.data = @head.data
    temp.next = @head.next
    @head = Node.new(data, temp)
  end

  def insert(position, data)
    temp = Node.new(data)
    x = go_to_node(position)
    temp.next = x.next
    x.next = temp
  end

  def go_to_node(position, node=@head, index=0)
    idx = index
    if idx == position
      return node
    else
      idx += 1
      go_to_node(position, node.next, idx)
    end
  end
end