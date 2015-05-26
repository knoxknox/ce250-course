class RadixSorter < Sorter

    R = 8

    CAP_R = 1 << R

    P = (32 + R - 1) / R

    def initialize
	super
        @count = Array.new(CAP_R)
        @tempArray = nil
    end

end
