class SortedListAsLinkedList < OrderedListAsLinkedList

  def insert(obj)
    prevPtr = nil
    ptr = @linkedList.head
    while not ptr.nil?
      break if ptr.datum >= obj
      prevPtr = ptr
      ptr = ptr.succ
    end
    if prevPtr.nil?
      @linkedList.prepend(obj)
    else
      prevPtr.insertAfter(obj)
    end
    @count += 1
  end

end
