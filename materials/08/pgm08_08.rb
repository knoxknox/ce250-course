class ChainedHashTable < HashTable

    def initialize(length)
        super()
        @array = Array.new(length)
        for i in 0 ... length
            @array[i] = LinkedList.new
	end
    end

    def length
	@array.length
    end

    def purge
        for i in 0 ... length
            @array[i].purge
	end
        @count = 0
    end

end
