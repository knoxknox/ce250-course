module PriorityQueueMethods

    abstractmethod :enqueue

    abstractmethod :min

    abstractmethod :dequeueMin

end

class PriorityQueue < Container

    def initialize
	super
    end

    include PriorityQueueMethods

end
