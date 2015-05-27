class LinkedList

  def each
    ptr = @head
    while not ptr.nil?
      yield ptr.datum
      ptr = ptr.succ
    end
  end

end
