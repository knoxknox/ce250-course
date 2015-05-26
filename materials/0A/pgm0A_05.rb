class Complex

  def +(c)
    Complex.new(real + c.real, imag + c.imag)
  end

  def -(c)
    Complex.new (real - c.real, imag - c.imag)
  end

  def *(c)
    Complex.new(real * c.real - imag * c.imag, real * c.imag + imag * c.real)
  end

  def /(c)
    denom = (c.real * c.real - c.imag * c.imag).to_f
    Complex.new((real * c.real - imag * c.imag) / denom, (imag * c.real - real * c.imag) / denom)
  end

end
