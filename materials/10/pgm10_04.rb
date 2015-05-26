class BinarySearchTree < BinaryTree

    def insert(obj)
        if empty?
            attachKey(obj)
        else
            diff = obj <=> @key
            if diff == 0
                raise ArgumentError
            elsif diff < 0
                @left.insert(obj)
            elsif diff > 0
                @right.insert(obj)
	    end
	end
        balance
    end

    def attachKey(obj)
	raise StateError if not empty?
        @key = obj
        @left = BinarySearchTree.new
        @right = BinarySearchTree.new
    end

    def balance
    end

end
