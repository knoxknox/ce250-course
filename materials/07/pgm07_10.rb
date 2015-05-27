class OrderedListAsArray < OrderedList

  class Cursor

    def withdraw
      raise IndexError if \
		not (0 ... @list.count) === @offset
      raise ContainerEmpty if @list.count == 0
      i = @offset
      while i < @list.count - 1
        @list.array[i] = @list.array[i + 1]
        i += 1
      end
      @list.array[i] = nil
      @list.count -= 1
    end

  end

end
