class LeftistHeap < BinaryTree

    include PriorityQueueMethods
    include MergeablePriorityQueueMethods

    def initialize(*args)
	case args.length
	when 0
	    super()
            @nullPathLength = 0
	when 1
            super(args[0], LeftistHeap.new, LeftistHeap.new)
            @nullPathLength = 1
	else
	    raise ArgumentError
	end
    end

    attr_accessor :key

    attr_accessor :left

    attr_accessor :right

    attr_accessor :nullPathLength

end
