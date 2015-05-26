class UniformRV < RandomVariable

    def initialize(u, v)
        @u = u
        @v = v
    end

    def next
        @u + (@v - @u) * RandomNumberGenerator.instance.next
    end

end
