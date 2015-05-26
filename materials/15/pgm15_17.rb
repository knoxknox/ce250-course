class BucketSorter < Sorter

    def doSort
        for i in 0 ... @m
            @count[i] = 0
	end
        for j in 0 ... @n
            @count[@array[j]] += 1
	end
        j = 0
        for i in 0 ... @m
            while @count[i] > 0
                @array[j] = i
                j += 1
                @count[i] -= 1
	    end
	end
    end

end
