class OpenScatterTable < HashTable

    EMPTY = 0
    OCCUPIED = 1
    DELETED = 2

    class Entry

        def initialize(state, obj)
            @state = state
            @obj = obj
	end

	attr_accessor :state

	attr_accessor :obj

    end

end
