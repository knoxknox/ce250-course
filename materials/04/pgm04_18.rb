class LinkedList

  def extract(item)
    ptr = @head
    prevPtr = nil
    while not ptr.nil? and not ptr.datum.equal?(item)
      prevPtr = ptr
      ptr = ptr.succ
    end

    raise ArgumentError if ptr.nil?

    if ptr == @head
      @head = ptr.succ
    else
      prevPtr.succ = ptr.succ
    end

    if ptr == @tail
      @tail = prevPtr
    end
  end

end
