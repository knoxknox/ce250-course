# 19
class DequeAsArray < QueueAsArray

  alias_method :queueHead, :head

  include DequeMethods

  def initialize(size = 0)
    super(size)
  end

  alias_method :head, :queueHead

  def enqueueHead(obj)
    raise ContainerFull if @count == @array.length
    if @head == 0
      @head = @array.length - 1
    else
      @head = @head - 1
    end
    @array[@head] = obj
    @count += 1
  end

  alias_method :dequeueHead, :dequeue

end

# 20
class DequeAsArray < QueueAsArray

  def tail
    raise ContainerEmpty if @count == 0
    @array[@tail]
  end

  alias_method :enqueueTail, :enqueue

  def dequeueTail
    raise ContainerEmpty if @count == 0
    result = @array[@tail]
    @array[@tail] = nil
    if @tail == 0
      @tail = @array.length - 1
    else
      @tail = @tail - 1
    end
    @count -= 1
    result
  end

end
