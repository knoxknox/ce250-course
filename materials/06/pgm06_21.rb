# 21
class DequeAsLinkedList < QueueAsLinkedList

  alias_method :queueHead, :head

  include DequeMethods

  def initialize
    super
  end

  alias_method :head, :queueHead

  def enqueueHead(obj)
    @list.prepend(obj)
    @count += 1
  end

  alias_method :dequeueHead, :dequeue

end

# 22
class DequeAsLinkedList < QueueAsLinkedList

  def tail
    raise ContainerEmpty if @count == 0
    @list.last
  end

  alias_method :enqueueTail, :enqueue

  def dequeueTail
    raise ContainerEmpty if @count == 0
    result = @list.last
    @list.extract(result)
    @count -= 1
    result
  end

end
