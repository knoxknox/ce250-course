class BinomialQueue < MergeablePriorityQueue

  def initialize(*args)
    super()
    @treeList = LinkedList.new
    case args.length
    when 0
    when 1
      assert { args[0].is_a?(BinomialTree) }
      @treeList.append(args[0])
    else
      raise ArgumentError
    end
  end

  attr_reader :treeList

end
