class MedianOfThreeQuickSorter < QuickSorter

    def initialize
	super
    end

    def selectPivot(left, right)
        middle = (left + right) / 2
	swap(left, middle) if @array[left] > @array[middle]
	swap(left, right) if @array[left] > @array[right]
	swap(middle, right) if @array[middle] > @array[right]
        return middle
    end

end
