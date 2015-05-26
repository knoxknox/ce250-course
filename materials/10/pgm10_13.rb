class MWayTree < SearchTree

    def initialize(m)
	assert { m > 2 }
	super()
        @key = Array.new(m - 1, 1)
        @subtree = Array.new(m)
    end

    def m
	@subtree.length
    end

end
