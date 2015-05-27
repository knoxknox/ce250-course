class Polynomial < Container

  def differentiate!
    each { |term| term.differentiate! }
    zeroTerm = find(Term.new(0, 0))
    if not zeroTerm.nil?
      withdraw(zeroTerm)
    end
  end

end
