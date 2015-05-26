class NaryTree < Tree

    def initialize(*args)
        super()
	case args.length
	when 1
            @degree = args[0]
            @key = nil
            @subtree = nil
	when 2
            @degree = args[0]
            @key = args[1]
            @subtree = Array.new(degree)
            for i in 0 ... degree
                @subtree[i] = NaryTree.new(degree)
	    end
	else
	    raise ArgumentError
	end
    end

    def purge
        @key = nil
        @subtree = nil
    end

end
