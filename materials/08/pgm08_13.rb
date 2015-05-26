class ChainedScatterTable < HashTable

    def insert(obj)
	raise ContainerFull if @count == length
        probe = h(obj)
        if not @array[probe].obj.nil?
            while @array[probe].succ != NULL
                probe = @array[probe].succ
	    end
            tail = probe
            probe = (probe + 1) % length
            while not @array[probe].obj.nil?
                probe = (probe + 1) % length
	    end
            @array[tail].succ = probe
	end
        @array[probe] = Entry.new(obj, NULL)
        @count += 1
    end

    def find(obj)
        probe = h(obj)
        while probe != NULL
	    return @array[probe].obj if @array[probe].obj == obj
            probe = @array[probe].succ
	end
        nil
    end

end
