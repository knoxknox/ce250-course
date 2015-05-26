class DequeAsLinkedList < QueueAsLinkedList

    alias_method :queueHead, :head

    include DequeMethods

    def initialize
	super
    end

    alias_method :head, :queueHead

    def enqueueHead(obj)
        @list.prepend(obj)
        @count += 1
    end

    alias_method :dequeueHead, :dequeue

end
