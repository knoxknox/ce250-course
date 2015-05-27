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
