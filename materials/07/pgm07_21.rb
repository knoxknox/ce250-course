class PolynomialAsOrderedList < Polynomial

    def initialize
        @list = OrderedListAsLinkedList.new
    end

    def addTerm(term)
        @list.insert(term)
    end

    def each(&block)
	@list.each(&block)
    end

    def find(term)
        @list.find(term)
    end

    def withdraw(term)
        @list.withdraw(term)
    end

end
