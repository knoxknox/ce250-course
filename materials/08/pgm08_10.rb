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
