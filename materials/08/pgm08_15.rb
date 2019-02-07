# 15
class OpenScatterTable < HashTable

  EMPTY = 0
  OCCUPIED = 1
  DELETED = 2

  class Entry

    def initialize(state, obj)
      @state = state
      @obj = obj
    end

    attr_accessor :state

    attr_accessor :obj

  end

end

# 16
class OpenScatterTable < HashTable

  def initialize(length)
    super()
    @array = Array.new(length)
    for i in 0 ... length
      @array[i] = Entry.new(EMPTY, nil)
    end
  end

  def length
    @array.length
  end

  def purge
    for i in 0 ... length
      @array[i] = Entry.new(EMPTY, nil)
    end
    @count = 0
  end

end

# 17
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

# 18
class OpenScatterTable < HashTable

  def findMatch(obj)
    hash = h(obj)
    for i in 0 ... length
      probe = (hash + c(i)) % length
      break if @array[probe].state == EMPTY
      if @array[probe].state == OCCUPIED and @array[probe].obj == obj
        return probe
      end
    end
    return -1
  end

  def find(obj)
    offset = findMatch(obj)
    if offset >= 0
      return @array[offset].obj
    else
      return nil
    end
  end

end

# 19
class OpenScatterTable < HashTable

  def withdraw(obj)
    raise ContainerEmpty if @count == 0
    offset = findInstance(obj)
    raise ArgumentError if offset < 0
    @array[offset] = Entry.new(DELETED, nil)
    @count -= 1
  end

end
