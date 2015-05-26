class Complex

  def r
    Math.sqrt(@real * @real + @imag * @imag)
  end

  def r=(value)
    tmp = theta
    @real = value * Math.cos(tmp)
    @imag = value * Math.sin(tmp)
  end

  def theta
    Math.atan2(@imag, @real)
  end

  def theta=(value)
    tmp = r
    @real = tmp * Math.cos(value)
    @imag = tmp * Math.sin(value)
  end

end
