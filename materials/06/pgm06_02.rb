# 02
class StackAsArray < Stack

  def initialize(size = 0)
    super()
    @array = Array.new(size)
  end

  def purge
    while @count > 0
      @count -= 1
      @array[@count] = nil
    end
  end

end

# 03
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

# 04
class StackAsArray < Stack

  def each
    for i in 0 ... @count
      yield @array[i]
    end
  end

end

# 05
class StackAsArray < Stack

  attr_reader :array

  class Iterator < Opus8::Iterator

    def initialize(stack)
      @stack = stack
      @position = 0
    end

    def more?
      @position < @stack.count
    end

    def succ
      if more?
        assert { more? }
        result = @stack.array[@position]
        @position += 1
      else
        result = nil
      end
      return result
    end
  end

  def iter
    Iterator.new(self)
  end

end
