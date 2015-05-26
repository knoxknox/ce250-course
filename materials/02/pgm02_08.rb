def power(x, n)
  if n == 0
    return 1
  elsif n % 2 == 0 # n is even
    return power(x * x, n / 2)
  else # n is odd
    return x * power(x * x, n / 2)
  end
end
