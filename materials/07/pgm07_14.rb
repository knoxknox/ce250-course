class OrderedListAsLinkedList < OrderedList

  def withdraw(obj)
    raise ContainerEmpty if @count == 0
    @linkedList.extract(obj)
    @count -= 1
  end

end
