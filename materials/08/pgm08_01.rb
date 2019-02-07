# 01
class Fixnum

  BITS = 31
  MAX =  1073741823
  MIN = -1073741824

end

class Integer

  def hash
    return self & Fixnum::MAX
  end

end

# 02
class Float

  def hash
    (m, e) = Math.frexp(self)
    mprime = ((m.abs - 0.5) * (1 << 52)).to_i
    return mprime >> 21
  end

end

# 03
class String

  SHIFT = 6

  MASK = ~0 << (Fixnum::BITS - SHIFT)

  def hash
    result = 0
    each_byte do |c|
      result = ((result & MASK) ^
      (result << SHIFT) ^ c) & Fixnum::MAX
    end
    return result
  end

end
