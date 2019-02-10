# 07
class LeftistHeap < BinaryTree

  include PriorityQueueMethods
  include MergeablePriorityQueueMethods

  def initialize(*args)
    case args.length
    when 0
      super()
      @nullPathLength = 0
    when 1
      super(args[0], LeftistHeap.new, LeftistHeap.new)
      @nullPathLength = 1
    else
      raise ArgumentError
    end
  end

  attr_accessor :key

  attr_accessor :left

  attr_accessor :right

  attr_accessor :nullPathLength

end

# 08
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

# 09
class LeftistHeap < BinaryTree

  def enqueue(obj)
    merge!(LeftistHeap.new(obj))
  end

end

# 10
class LeftistHeap < BinaryTree

  def min
    raise ContainerEmpty if empty?
    return @key
  end

end

# 11
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
