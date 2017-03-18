require_relative 'node'
require 'pry'

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
    output(go_to_node(first), number)
  end

  def to_string
   output(@head)
  end

  def output(start=@head, number=count)
    collect_items(start, number).join(' ')
  end

  def collect_items(top=@head, index=count)
    array = []
    index.times do
      array << top.data
      top = top.next
    end
    array
  end

  def include?(value)
    collect_items.include?(value)
  end

  def pop
    p @head.tail_node.data
    go_to_node(count-2).next = nil
  end

  def count
    if @head.nil?
      0
    else
      counter
    end
  end

  def counter
   count = 1
   top = @head
   until top.next.nil?
     count += 1
     top = top.next
    end
    count 
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

  def go_to_node(position)
    index = 0
    top = head
    until index == position
      top = top.next
      index += 1
    end
    top
  end
end

