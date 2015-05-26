class HeapSorter < Sorter

    def buildHeap
        i = @n / 2
        while i > 0
            percolateDown(i, @n)
            i -= 1
	end
    end

end
