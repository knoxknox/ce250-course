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
