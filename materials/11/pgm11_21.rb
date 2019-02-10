# 21
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

# 22
class Simulation

  def initialize
    @eventList = LeftistHeap.new
    @serverBusy = false
    @numberInQueue = 0
    @serviceTime = ExponentialRV.new(100.0)
    @interArrivalTime = ExponentialRV.new(100.0)
  end

  def run(timeLimit)
    @eventList.enqueue(Event.new(Event::ARRIVAL, 0))
    while not @eventList.empty?
      evt = @eventList.dequeueMin
      t = evt.time
      if t > timeLimit
        @eventList.purge
        break
      end
      case evt.category
      when Event::ARRIVAL
        if not @serverBusy
          @serverBusy = true
          @eventList.enqueue(Event.new(Event::DEPARTURE, t + @serviceTime.next))
        else
          @numberInQueue += 1
        end
        @eventList.enqueue(Event.new(Event::ARRIVAL, t + @interArrivalTime.next))
      when Event::DEPARTURE
        if @numberInQueue == 0
          @serverBusy = false
        else
          @numberInQueue -= 1
          @eventList.enqueue(
            Event.new(Event::DEPARTURE, t + @serviceTime.next))
          end
        end
      end
    end

  end
end
