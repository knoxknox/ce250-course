class StackAsArray < Stack

    attr_reader :array

    class Iterator < Opus8::Iterator

	def initialize(stack)
	    @stack = stack
	    @position = 0
	end

	def more?
	    @position < @stack.count
	end

	def succ
	    if more?
		assert { more? }
		result = @stack.array[@position]
		@position += 1
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
