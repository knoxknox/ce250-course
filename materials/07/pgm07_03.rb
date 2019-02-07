# 03
class OrderedListAsArray < OrderedList

  def initialize(size = 0)
    super()
    @array = Array.new(size)
  end

  attr_reader :array

  attr_accessor :count

end

# 04
class OrderedListAsArray < OrderedList

  def insert(obj)
    raise ContainerFull if @count == @array.length
    @array[@count] = obj
    @count += 1
  end

end

# 05
class OrderedListAsArray < OrderedList

  def member?(obj)
    for i in 0 ... @count
      return true if @array[i].equal?(obj)
    end
    false
  end

  def find(obj)
    for i in 0 ... @count
      return @array[i] if @array[i] == obj
    end
    nil
  end

end

# 06
class OrderedListAsArray < OrderedList

  def withdraw(obj)
    raise ContainerEmpty if @count == 0
    i = 0
    while i < @count and not @array[i].equal?(obj)
      i += 1
    end
    raise ArgumentError if i == @count
    while i < @count - 1
      @array[i] = @array[i + 1]
      i += 1
    end
    @array[i] = nil
    @count -= 1
  end

end

# 07
class OrderedListAsArray < OrderedList

  class Cursor

    def initialize(list, offset)
      super()
      @list = list
      @offset = offset
    end

    def datum
      raise IndexError if \
    not (0 ... @list.count) === offset
      @list[@offset]
    end

  end

end

# 08
class OrderedListAsArray < OrderedList

  def findPosition(obj)
    i = 0
    while i < @count and not @array[i] == obj
      i += 1
    end
    Cursor.new(self, i)
  end

  def [](offset)
    raise IndexError if not (0 ... @count) === offset
    @array[offset]
  end

end

# 09
class OrderedListAsArray < OrderedList

  class Cursor < Cursor

    def insertAfter(obj)
      raise IndexError if \
    not (0 ... @list.count) === @offset
      raise ContainerFull if \
    @list.count == @list.array.length
      insertPosition = @offset + 1
      i = @list.count
      while i > insertPosition
        @list.array[i] = @list.array[i - 1]
        i -= 1
      end
      @list.array[insertPosition] = obj
      @list.count += 1
    end

  end

end

# 10
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
