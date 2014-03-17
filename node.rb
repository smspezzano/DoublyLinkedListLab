# A simple Node class.  A LinkList will be composed of many
# nodes.
class Node
  
  def initialize(value)
    @value = value
    @next = nil
    @previous = nil
  end 

  def next=(next_node)
    @next = next_node 
  end

  def previous=(previous)
    @previous = previous
  end

  def next
    @next
  end

  def previous
    @previous
  end
  
  def value=(value)
    @value = value
  end

  def value
    @value
  end
end
