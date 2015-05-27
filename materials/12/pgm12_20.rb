class PartitionAsForest < Partition

  def join(s, t)
    assert { member?(s) and s.parent.nil? and
    member?(t) and t.parent.nil? and not s.equal?(t) }
    t.parent = s
    @count -= 1
  end

end
