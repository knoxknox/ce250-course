class StraightInsertionSorter < Sorter

    def initialize
        super
    end

    def doSort
        for i in 1 ... @n
            j = i
            while j > 0 and @array[j - 1] > @array[j]
                swap(j, j - 1)
                j -= 1
	    end
	end
    end

end
