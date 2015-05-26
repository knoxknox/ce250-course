class HeapSorter < Sorter

    def doSort
	base = @array.baseIndex
	@array.baseIndex = 1
        buildHeap
        i = @n
        while i >= 2
            swap(i, 1)
            percolateDown(1, i - 1)
            i -= 1
	end
	@array.baseIndex = base
    end

end
