class QuickSorter < Sorter

  def doSort
    quicksort(0, @n - 1)
    StraightInsertionSorter.new.sort(@array)
  end

end
