class SetAsBitVector < Set

  BITS = 8 * 1.size

  def initialize(n)
    super
    @vector = Array.new((n + BITS - 1) / BITS)
    for i in 0 ... @vector.length
      @vector[i] = 0
    end
  end

  attr_accessor :vector
  protected :vector

end
