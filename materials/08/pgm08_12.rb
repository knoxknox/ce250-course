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
