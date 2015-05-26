module MergeablePriorityQueueMethods

    abstractmethod :merge!
end

class MergeablePriorityQueue < PriorityQueue

    def initialize
	super
    end

    include MergeablePriorityQueueMethods

end
