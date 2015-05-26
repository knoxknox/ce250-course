class OrderedListAsArray < OrderedList

    def initialize(size = 0)
	super()
        @array = Array.new(size)
    end

    attr_reader :array

    attr_accessor :count

end
