class Simulation

    class Event < Association

	ARRIVAL = 1
	DEPARTURE = 2

        def initialize(category, time)
	    super(time, category)
	end

	alias_method :time, :key

	alias_method :category, :value

    end

end
