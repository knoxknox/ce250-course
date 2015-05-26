class Polynomial < Container

    class Term < AbstractObject

        def clone
            Term.new(@coefficient, @exponent)
	end

        def +(term)
	    assert { @exponent == term.exponent }
            return Term.new( \
		@coefficient + term.coefficient, @exponent)
	end

    end

end
