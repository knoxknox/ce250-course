class HeapSorter < Sorter

    def initialize
	super
    end


    def percolateDown(i, length)
        while 2 * i <= length
            j = 2 * i
	    j += 1 if j < length and @array[j + 1] > @array[j]
	    break if @array[i] >= @array[j]
            swap(i, j)
            i = j
	end
    end

end
