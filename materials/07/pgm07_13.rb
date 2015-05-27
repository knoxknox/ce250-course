class OrderedListAsLinkedList < OrderedList

  def member?(obj)
    ptr = @linkedList.head
    while not ptr.nil?
      return true if ptr.datum.equal?(obj)
      ptr = ptr.succ
    end
    false
  end

  def find(arg)
    ptr = @linkedList.head
    while not ptr.nil?
      return ptr.datum if ptr.datum == arg
      ptr = ptr.succ
    end
    nil
  end

end
