class QueueAsArray < Queue

  def initialize(size = 0)
    super()
    @array = Array.new(size)
    @head = 0
    @tail = size - 1
  end

  def purge
    while @count > 0
      @array[@head] = nil
      @head = @head + 1
      if @head == @array.length
        @head = 0
      end
      @count -= 1
    end
  end

end
