class ExponentialRV < RandomVariable

    def initialize(mu)
        @mu = mu
    end

    def next
        -@mu * Math.log(RandomNumberGenerator.instance.next)
    end

end
