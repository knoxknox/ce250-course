# 08
class ChainedHashTable < HashTable

  def initialize(length)
    super()
    @array = Array.new(length)
    for i in 0 ... length
      @array[i] = LinkedList.new
    end
  end

  def length
    @array.length
  end

  def purge
    for i in 0 ... length
      @array[i].purge
    end
    @count = 0
  end

end

# 09
class ChainedHashTable < HashTable

  def insert(obj)
    @array[h(obj)].append(obj)
    @count += 1
  end

  def withdraw(obj)
    @array[h(obj)].extract(obj)
    @count -= 1
  end

end

# 10
class ChainedHashTable < HashTable

  def find(obj)
    ptr = @array[h(obj)].head
    while not ptr.nil?
      return ptr.datum if ptr.datum == obj
      ptr = ptr.succ
    end
    nil
  end

end
