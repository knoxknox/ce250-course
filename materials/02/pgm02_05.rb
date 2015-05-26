def gamma
  result = 0.0
  i = 1
  while i <= 500000
    result += 1.0/i - Math.log((i + 1.0)/i)
    i += 1
  end
  return result
end
