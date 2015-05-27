class Float

  def hash
    (m, e) = Math.frexp(self)
    mprime = ((m.abs - 0.5) * (1 << 52)).to_i
    return mprime >> 21
  end

end
