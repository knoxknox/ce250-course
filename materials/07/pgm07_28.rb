class SortedListAsArray < OrderedListAsArray

  def withdraw(obj)
    raise ContainerEmpty if @count == 0
    offset = findOffset(obj)
    raise ArgumentError if offset < 0
    i = offset
    while i < @count
      @array[i] = @array[i + 1]
      i += 1
    end
    @array[i] = nil
    @count -= 1
  end

end
