require 'Byebug'

class Queue
  attr_reader :queue, :count

  def intialize
    @queue = []
    @count = 0
  end

  def enque(el)
    @queue << el
    @count +=1
  end

  def deque
    @count -=1
    @queue.shift
  end

  def peek
    @queue[@count-1]
  end


end
