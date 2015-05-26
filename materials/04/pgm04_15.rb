class LinkedList

  def prepend(item)
    tmp = Element.new(self, item, @head)
    @tail = tmp if @head.nil?
    @head = tmp
  end

end
