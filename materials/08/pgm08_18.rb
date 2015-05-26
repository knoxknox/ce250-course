class OpenScatterTable < HashTable

    def findMatch(obj)
        hash = h(obj)
        for i in 0 ... length
            probe = (hash + c(i)) % length
	    break if @array[probe].state == EMPTY
            if @array[probe].state == OCCUPIED and \
                    @array[probe].obj == obj
                return probe
	    end
	end
        return -1
    end

    def find(obj)
        offset = findMatch(obj)
        if offset >= 0
            return @array[offset].obj
        else
            return nil
	end
    end

end
