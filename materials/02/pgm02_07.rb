def geometricSeriesSum(x, n)
  sum = 0
  i = 0
  while i <= n
    sum = sum * x + 1
    i += 1
  end
  return sum
end
