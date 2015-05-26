class LinkedList

  def clone
    result = LinkedList.new
    ptr = @head
    while not ptr.nil?
      result.append(ptr.datum)
      ptr = ptr.succ
    end
    result
  end

end
