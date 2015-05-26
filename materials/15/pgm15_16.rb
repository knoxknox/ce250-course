class BucketSorter < Sorter

    def initialize(m)
        super()
        @m = m
        @count = Array.new(@m)
    end

end
