# 21
class PartitionAsForestV2 < PartitionAsForest

  def find(item)
    root = @array[item]
    while not root.parent.nil?
      root = root.parent
    end
    ptr = @array[item]
    while not ptr.parent.nil?
      ptr, ptr.parent = ptr.parent, root
    end
    return root
  end

end

# 22
class PartitionAsForestV2 < PartitionAsForest

  def join(s, t)
    assert { member?(s) and s.parent.nil? and
    member?(t) and t.parent.nil? and not s.equal?(t) }
    if s.count > t.count
      t.parent = s
      s.count += t.count
    else
      s.parent = t
      t.count += s.count
    end
    @count -= 1
  end

end
