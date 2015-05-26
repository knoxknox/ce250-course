class OpenScatterTable < HashTable

    def initialize(length)
        super()
        @array = Array.new(length)
        for i in 0 ... length
            @array[i] = Entry.new(EMPTY, nil)
	end
    end

    def length
        @array.length
    end

    def purge
        for i in 0 ... length
            @array[i] = Entry.new(EMPTY, nil)
	end
        @count = 0
    end

end
