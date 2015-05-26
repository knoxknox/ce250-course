module DequeMethods

    abstractmethod :enqueueHead

    abstractmethod :dequeueHead

    abstractmethod :head

    abstractmethod :enqueueTail

    abstractmethod :dequeueTail

    abstractmethod :tail

end

class Deque < Queue

    def initialize
	super
    end

    alias_method :queueHead, :head
    include DequeMethods
    alias_method :head, :queueHead

end
