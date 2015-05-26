class StackAsLinkedList < Stack

    attr_reader :list

    class Iterator < Opus8::Iterator

	def initialize(stack)
	    @position = stack.list.head
	end

	def more?
	    not @position.nil?
	end

	def succ
	    if more?
		result = @position.datum
		@position = @position.succ
	    else
		result = nil
	    end
	    return result
	end
    end

    def iter
	Iterator.new(self)
    end

end
