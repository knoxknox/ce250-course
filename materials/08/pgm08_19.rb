class OpenScatterTable < HashTable

  def withdraw(obj)
    raise ContainerEmpty if @count == 0
    offset = findInstance(obj)
    raise ArgumentError if offset < 0
    @array[offset] = Entry.new(DELETED, nil)
    @count -= 1
  end

end
