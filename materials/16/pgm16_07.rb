class GraphAsMatrix < Graph

    def initialize(size)
        super(size)
        @matrix = DenseMatrix.new(size, size)
    end

end
