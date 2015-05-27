class StackAsLinkedList < Stack

  def each(&block)
    @list.each(&block)
  end

end
