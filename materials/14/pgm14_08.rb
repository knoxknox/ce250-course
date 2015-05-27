def mergeSort(array, i, n)
  if n > 1
    mergeSort(array, i, n / 2)
    mergeSort(array, i + n / 2, n - n / 2)
    merge(array, i, n / 2, n - n / 2)
  end
end
