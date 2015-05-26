class QuickSorter < Sorter

    CUTOFF = 2 # minimum cut-off

    def quicksort(left, right)
        if right - left + 1 > CUTOFF
            p = selectPivot(left, right)
            swap(p, right)
            pivot = @array[right]
            i = left
            j = right - 1
	    loop do
		i += 1 while i < j and @array[i] < pivot
		j -= 1 while i < j and @array[j] > pivot
		break if i >= j
                swap(i, j)
                i += 1
                j -= 1
	    end
	    swap(i, right) if @array[i] > pivot
	    quicksort(left, i - 1) if left < i
	    quicksort(i + 1, right) if right > i
	end
    end

end
