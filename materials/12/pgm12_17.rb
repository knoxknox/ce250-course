# 17
class PartitionAsForest < Partition

  class PartitionTree < Tree

    def initialize(partition, item)
      super()
      @universeSize = partition.universeSize
      @partition = partition
      @item = item
      @parent = nil
      @rank = 0
      @count = 1
    end

    attr_reader :partition
    attr_accessor :parent
    attr_accessor :rank
    attr_accessor :count

  end

end

# 18
class PartitionAsForest < Partition

  def initialize(n)
    super
    @array = Array.new(@universeSize)
    for item in 0 ... @universeSize
      @array[item] = PartitionTree.new(self, item)
    end
    @count = @universeSize
  end

end

# 19
class PartitionAsForest < Partition

  def find(item)
    ptr = @array[item]
    while not ptr.parent.nil?
      ptr = ptr.parent
    end
    return ptr
  end

end

# 20
class PartitionAsForest < Partition

  def join(s, t)
    assert { member?(s) and s.parent.nil? and
    member?(t) and t.parent.nil? and not s.equal?(t) }
    t.parent = s
    @count -= 1
  end

end
