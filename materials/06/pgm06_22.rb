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
