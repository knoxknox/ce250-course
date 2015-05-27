class OrderedListAsLinkedList < OrderedList

  def insert(obj)
    @linkedList.append(obj)
    @count += 1
  end

  def [](offset)
    raise IndexError if not (0 ... @count) === offset
    ptr = @linkedList.head
    i = 0
    while i < offset and not ptr.nil?
      ptr = ptr.succ
      i += 1
    end
    ptr.datum
  end

end
