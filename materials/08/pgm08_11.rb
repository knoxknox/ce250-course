# 11
class ChainedScatterTable < HashTable

  NULL = -1

  class Entry

    def initialize(obj, succ)
      @obj = obj
      @succ = succ
    end

    attr_accessor :obj

    attr_accessor :succ

  end

end

# 12
class ChainedScatterTable < HashTable

  def initialize(length)
    super()
    @array = Array.new(length)
    for i in 0 ... length
      @array[i] = Entry.new(nil, NULL)
    end
  end

  def length
    @array.length
  end

  def purge
    for i in 0 ... length
      @array[i] = Entry.new(nil, NULL)
    end
    @count = 0
  end

end

# 13
class ChainedScatterTable < HashTable

  def insert(obj)
    raise ContainerFull if @count == length
    probe = h(obj)
    if not @array[probe].obj.nil?
      while @array[probe].succ != NULL
        probe = @array[probe].succ
      end
      tail = probe
      probe = (probe + 1) % length
      while not @array[probe].obj.nil?
        probe = (probe + 1) % length
      end
      @array[tail].succ = probe
    end
    @array[probe] = Entry.new(obj, NULL)
    @count += 1
  end

  def find(obj)
    probe = h(obj)
    while probe != NULL
      return @array[probe].obj if @array[probe].obj == obj
      probe = @array[probe].succ
    end
    nil
  end

end

# 14
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
