class BinaryHeap < PriorityQueue

  def initialize(length = 0)
    super()
    @array = Array.new(length, 1) # Base index is 1.
  end

  def purge
    while @count > 0
      @array[@count] = nil
      @count -= 1
    end
  end

end
