def binarySearch(array, target, i, n)
    case n
    when 0
        raise ArgumentError
    when 1
        if array[i] == target
            return i
	else
	    raise ArgumentError
	end
    else
        j = i + n / 2
        if array[j] <= target
            return binarySearch(array, target, j, n - n/2)
        else
            return binarySearch(array, target, i, n/2)
	end
    end
end
