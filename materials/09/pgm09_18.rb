class BinaryTree < Tree

    def compareTo(bt)
	assert { is_a?(obj.type) }
        if empty?
            if bt.empty?
                return 0
            else
                return -1
	    end
        elsif bt.empty?
            return 1
        else
            result = @key <=> bt._key
	    result = @left <=> bt._left if result == 0
	    result = @right <=> bt._right if result == 0
            return result
	end
    end

end
