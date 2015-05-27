class OpenScatterTable < HashTable

  def c(i)
    i
  end

  def findUnoccupied(obj)
    hash = h(obj)
    for i in 0 .. @count
      probe = (hash + c(i)) % length
      return probe if @array[probe].state != OCCUPIED
    end
    raise ContainerFull
  end

  def insert(obj)
    raise ContainerFull if @count == length
    offset = findUnoccupied(obj)
    @array[offset] = Entry.new(OCCUPIED, obj)
    @count += 1
  end

end
