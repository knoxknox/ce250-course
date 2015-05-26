class PartitionAsForest < Partition

    class PartitionTree < Tree

        def initialize(partition, item)
            super()
	    @universeSize = partition.universeSize
            @partition = partition
            @item = item
            @parent = nil
            @rank = 0
            @count = 1
	end

	attr_reader :partition
	attr_accessor :parent
	attr_accessor :rank
	attr_accessor :count

    end

end
