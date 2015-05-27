class QueueAsLinkedList < Queue

  def initialize
    super
    @list = LinkedList.new
  end

  def purge
    @list.purge
    super
  end

end
