def prefixSums(a, n)
  j = n - 1
  while j >= 0
    sum = 0
    i = 0
    while i <= j
      sum += a[i]
      i += 1
    end
    a[j] = sum
    j -= 1
  end
end
