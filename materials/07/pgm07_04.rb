class OrderedListAsArray < OrderedList

  def insert(obj)
    raise ContainerFull if @count == @array.length
    @array[@count] = obj
    @count += 1
  end

end
