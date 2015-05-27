class PolynomialAsSortedList < Polynomial

  def initialize
    super
    @list = SortedListAsLinkedList.new
  end

  attr_reader :list

  def +(poly)
    result = PolynomialAsSortedList.new
    p1 = @list.iter
    p2 = poly.list.iter
    term1 = p1.succ
    term2 = p2.succ
    while not term1.nil? and not term2.nil?
      if term1.exponent < term2.exponent
        result.addTerm(term1.clone)
        term1 = p1.succ
      elsif term1.exponent > term2.exponent
        result.addTerm(term2.clone)
        term2 = p2.succ
      else
        sum = term1 + term2
        result.addTerm(sum) if sum.coefficient != 0
        term1 = p1.succ
        term2 = p2.succ
      end
    end
    while not term1.nil?
      result.addTerm(term1.clone)
      term1 = p1.succ
    end
    while not term2.nil?
      result.addTerm(term2.clone)
      term2 = p2.succ
    end
    return result
  end

end
