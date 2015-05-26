def fibonacci(n)
  previous = -1
  result = 1
  i = 0
  while i <= n
    sum = result + previous
    previous = result
    result = sum
    i += 1
  end
  return result
end
