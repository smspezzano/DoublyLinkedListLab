# A List class that should be implemented as
# a doubly linked list.  Also, it is important
# to keep track of a head and tail pointer
# for this lab.

# The following methods are the most important
# to implement and should be done first:

# new, push, pop, and length

# The following methods are nice to have and should
# be implemented next:

# [], []=, insert, shift, unshift, first, last

# The following methods are bonus and should only be tackled
# after the previous methods are implemented:

# reverse, max, min, reduce, each, flatten
require './node.rb'
class List

  def initialize
    @head = nil
    @tail = nil
    @length = 0
  end

  # Adds a new value to the end of the list.
  def push(value)
    if @head.nil?
      @head = Node.new(value)
      @tail = @head
    else
      old_tail = @tail
      @tail = Node.new(value)
      old_tail.next = @tail
      @tail.previous = old_tail
    end
    @length += 1
  end

  def length
    @length
  end

  # Returns the value that is popped off
  # or nil if none exists
  def pop
    if @length == 0
      return nil
    elsif @length == 1
      last_tail = @tail
      @tail = nil
      @head = nil
      @length = 0
      return last_tail.value
    else     
      last_tail = @tail
      @tail = @tail.previous
      @tail.next = nil
      @length -= 1
      last_tail.value
    end
  end

  def insert(index, value)
  end

  # Given an index, returns the value at that index
  def [](index)

  end

  # Sets a value at the given index.  Returns the value that
  # was assigned
  def []=(index, value)
    value
  end

  # Returns the first value that was removed from the list and
  # shifts all items down by 1
  def shift
  end

  # Adds a new value to the front of the list
  def unshift(value)
  end

  def first
  end

  def last
  end
end
