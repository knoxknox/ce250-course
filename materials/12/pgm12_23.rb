class PartitionAsForestV3 < PartitionAsForestV2

  def join(s, t)
    assert { member?(s) and s.parent.nil? and
    member?(t) and t.parent.nil? and not s.equal?(t) }
    if s.rank > t.rank
      t.parent = s
    else
      s.parent = t
      if s.rank == t.rank
        t.rank += 1
      end
    end
    @count -= 1
  end

end
