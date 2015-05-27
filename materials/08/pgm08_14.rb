class ChainedScatterTable < HashTable

  def withdraw(obj)
    raise ContainerEmpty if @count == 0
    i = h(obj)
    while i != NULL and not @array[i].obj.equal?(obj)
      i = @array[i].succ
    end
    raise ArgumentError if i == NULL
    loop do
      j = @array[i].succ
      while j != NULL
        h = h(@array[j].obj)
        contained = false
        k = @array[i].succ
        while k != @array[j].succ and not contained
          contained = true if k == h
          k = @array[k].succ
        end
        break if not contained
        j = @array[j].succ
      end
      break if j == NULL
      @array[i].obj = @array[j].obj
      i = j
    end
    @array[i] = Entry.new(nil, NULL)
    j = (i + length - 1) % length
    while j != i
      if @array[j].succ == i
        @array[j].succ = NULL
        break
      end
      j = (j + length - 1) % length
    end
    @count -= 1
  end

end
