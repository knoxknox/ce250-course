def horner(a, n, x)
  i = n - 1
  result = a[n]
  while i >= 0
    result = result * x + a[i]
    i -= 1
  end
  return result
end
