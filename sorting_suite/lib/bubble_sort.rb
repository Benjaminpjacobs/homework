class BubbleSort
  def initialize
    
  end

  def sort(items)
    (items.length - 1).times do 
    single_pass(items)
    end
    items
  end

  def single_pass(items)
    items.each_with_index do |item, idx|
      swap_if_larger(item, items, idx) if items[idx] != items.last
    end
  end

  def swap_if_larger(item, items, idx)
    swap(items, idx) if compare(item, items, idx)
  end
  
  def compare(item, items, idx)
      item > items[idx + 1]
  end

  def swap(items, idx)
    items[idx], items[idx+1] = items[idx+1], items[idx]
  end
  
end