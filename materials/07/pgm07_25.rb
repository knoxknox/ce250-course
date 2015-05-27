class SortedListAsArray < OrderedListAsArray

  def insert(obj)
    raise ContainerFull if @count == @array.length
    i = @count
    while i > 0 and @array[i - 1] > obj
      @array[i] = @array[i - 1]
      i -= 1
    end
    @array[i] = obj
    @count += 1
  end

end
