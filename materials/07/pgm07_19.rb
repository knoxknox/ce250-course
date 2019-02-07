# 19
class Polynomial < Container

  class Term < AbstractObject

    def initialize(coefficient, exponent)
      @coefficient = coefficient
      @exponent = exponent
    end

    attr_reader :coefficient

    attr_reader :exponent

    def compareTo(term)
      assert { is_a?(term.type) }
      if @exponent == term.exponent
        return @coefficient <=> term.coefficient
      else
        return @exponent <=> term.exponent
      end
    end

    def differentiate!
      if @exponent > 0
        @coefficient *= @exponent
        @exponent -= 1
      else
        @coefficient = 0
      end
    end

  end

end

# 20
class Polynomial < Container

  def initialize
    super
  end

  abstractmethod :addTerm

  abstractmethod :differentiate!

  abstractmethod :+

end

# 22
class Polynomial < Container

  def differentiate!
    each { |term| term.differentiate! }
    zeroTerm = find(Term.new(0, 0))
    if not zeroTerm.nil?
      withdraw(zeroTerm)
    end
  end

end

# 31
class Polynomial < Container

  class Term < AbstractObject

    def clone
      Term.new(@coefficient, @exponent)
    end

    def +(term)
      assert { @exponent == term.exponent }
      return Term.new(@coefficient + term.coefficient, @exponent)
    end

  end

end
