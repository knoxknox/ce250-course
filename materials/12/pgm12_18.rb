class PartitionAsForest < Partition

    def initialize(n)
        super
        @array = Array.new(@universeSize)
        for item in 0 ... @universeSize
            @array[item] = PartitionTree.new(self, item)
	end
        @count = @universeSize
    end

end
