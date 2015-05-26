class Complex

  def self.main(*argv)
    c = Complex.new(0, 0)
    puts c
    c.real = 1
    c.imag = 2
    puts c
    c.theta = Math::PI/2
    c.r = 50
    puts c
    c = Complex.new(1, 2)
    d = Complex.new(3, 4)
    puts c, d, c+d, c-d, c*d, c/d

    return 0
  end

end
