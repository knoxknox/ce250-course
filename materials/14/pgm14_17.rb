def pi(trials)
  hits = 0
  for i in 0 ... trials
    x = RandomNumberGenerator.instance.next
    y = RandomNumberGenerator.instance.next
    if x * x + y * y < 1.0
      hits += 1
    end
  end
  return 4.0 * hits / trials
end
