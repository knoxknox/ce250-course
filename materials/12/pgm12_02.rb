class SetAsArray < Set

    def initialize(n)
        super
        @array = Array.new(@universeSize)
        for item in 0 ... @universeSize
            @array[item] = false
	end
    end

    attr_accessor :array
    protected :array

end
