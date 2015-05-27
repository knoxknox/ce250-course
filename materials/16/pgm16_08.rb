class GraphAsLists < Graph

  def initialize(size)
    super(size)
    @adjacencyList = Array.new(size)
    for i in 0 ... size
      @adjacencyList[i] = LinkedList.new
    end
  end

end
