class LeftistHeap < BinaryTree

    def dequeueMin
	raise ContainerEmpty if empty?
        result = @key
        oldLeft = @left
        oldRight = @right
        purge
        swapContentsWith(oldLeft)
        merge!(oldRight)
        return result
    end

end
