class LinkedList

  def first
    raise ContainerEmpty if @head.nil?
    @head.datum
  end

  def last
    raise ContainerEmpty if @tail.nil?
    @tail.datum
  end

end
