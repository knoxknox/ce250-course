# 03
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

# 04
class BinaryHeap < PriorityQueue

  def enqueue(obj)
    raise ContainerFull if @count == @array.length
    @count += 1
    i = @count
    while i > 1 and @array[i/2] > obj
      @array[i] = @array[i / 2]
      i /= 2
    end
    @array[i] = obj
  end

end

# 05
class BinaryHeap < PriorityQueue

  def min
    raise ContainerEmpty if @count == 0
    @array[1]
  end

end

# 06
class BinaryHeap < PriorityQueue

  def dequeueMin
    raise ContainerEmpty if @count == 0
    result = @array[1]
    last = @array[@count]
    @count -= 1
    i = 1
    while 2 * i < @count + 1
      child = 2 * i
      if child + 1 < @count + 1 \
                and @array[child + 1] < @array[child]
        child += 1
      end
      break if last <= @array[child]
      @array[i] = @array[child]
      i = child
    end
    @array[i] = last
    return result
  end

end
