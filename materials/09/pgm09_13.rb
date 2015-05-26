class NaryTree < Tree

    def empty?
        @key.nil?
    end

    def key
	raise StateError if empty?
        return @key
    end

    def attachKey(obj)
	raise StateError if not empty?
        @key = obj
        @subtree = Array.new(degree)
        for i in 0 ... degree
            @subtree[i] = NaryTree.new(degree)
	end
    end

    def detachKey
	raise StateError if not leaf?
        result = @key
        @key = nil
        @subtree = nil
        return result
    end

end
