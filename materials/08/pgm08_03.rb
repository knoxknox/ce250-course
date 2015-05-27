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
