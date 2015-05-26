class BTree < MWayTree

    def insert(obj)
        if empty?
            if @parent.nil?
                attachSubtree(0, BTree.new(m))
                @key[1] = obj
                attachSubtree(1, BTree.new(m))
                @count = 1
            else
                @parent.insertUp(obj, BTree.new(m))
	    end
        else
            index = findIndex(obj)
	    raise ArgumentError if index != 0 and @key == obj
            @subtree[index].insert(obj)
	end
    end

end
