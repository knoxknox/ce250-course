class StackAsArray < Stack

  def push(obj)
    raise ContainerFull if @count == @array.length
    @array[@count] = obj
    @count += 1
  end

  def pop
    raise ContainerEmpty if @count == 0
    @count -= 1
    result = @array[@count]
    @array[@count] = nil
    return result
  end

  def top
    raise ContainerEmpty if @count == 0
    return @array[@count - 1]
  end

end
