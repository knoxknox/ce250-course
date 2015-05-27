class LeftistHeap < BinaryTree

  def merge!(queue)
    if empty?
      swapContentsWith(queue)
    elsif not queue.empty?
      swapContentsWith(queue) if @key > queue.key
      @right.merge!(queue)
      swapSubtrees if \
		@left.nullPathLength < @right.nullPathLength
      @nullPathLength = 1 + \
		[@left.nullPathLength, @right.nullPathLength].min
    end
  end
end
