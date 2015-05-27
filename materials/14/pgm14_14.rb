class SimpleRV < RandomVariable

  def next
    RandomNumberGenerator.instance.next
  end

end
