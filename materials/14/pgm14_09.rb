def fibonacci(n, k)
  if n < k - 1
    return 0
  elsif n == k - 1
    return 1
  else
    f = [0] * (n + 1)
    for i in 0 ... k - 1
      f[i] = 0
    end
    f[k - 1] = 1
    for i in k .. n
      sum = 0
      for j in 0 .. k
        sum += f[i - j]
      end
      f[i] = sum
    end
    return f[n]
  end
end
