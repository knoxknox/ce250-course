class PartitionAsForest < Partition

  def find(item)
    ptr = @array[item]
    while not ptr.parent.nil?
      ptr = ptr.parent
    end
    return ptr
  end

end
