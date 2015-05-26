class StackAsLinkedList < Stack

    def initialize
	super
        @list = LinkedList.new
    end

    def purge
        @list.purge
	super
    end

end
