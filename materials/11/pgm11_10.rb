class LeftistHeap < BinaryTree

    def min
	raise ContainerEmpty if empty?
        return @key
    end

end
