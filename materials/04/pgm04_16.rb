class LinkedList

  def append(item)
    tmp = Element.new(self, item, nil)
    if @head.nil?
      @head = tmp
    else
      @tail.succ = tmp
    end
    @tail = tmp
  end

end
