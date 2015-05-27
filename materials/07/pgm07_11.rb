class OrderedListAsLinkedList < OrderedList

  def initialize
    super
    @linkedList = LinkedList.new
  end

  attr_reader :linkedList

  attr_accessor :count

end
