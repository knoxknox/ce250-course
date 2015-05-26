class MultisetAsLinkedList < Multiset

    def &(set)
	assert { set.is_a?(MultisetAsLinkedList) }
	assert { @universeSize == set.universeSize }
        result = MultisetAsLinkedList.new(@universeSize)
        p = @list.head
        q = set.list.head
        while not p.nil? and not q.nil?
            diff = p.datum - q.datum
	    result.list.append(p.datum) if diff == 0
	    p = p.succ if diff <= 0
	    q = q.succ if diff >= 0
	end
        return result
    end

end
