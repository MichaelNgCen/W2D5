class Flight
    attr_reader :passengers
    def initialize(fn, cp)
        @flight_number = fn
        @capacity = cp
        @passengers = []
    end

    def full?
        @passengers.length >= @capacity
    end

    def board_passenger(psg)
        @passengers << psg if !self.full? && psg.has_flight?(@flight_number)
    end

    def list_passengers
       passengers.map(&:name)
    end

    def [](n)
        @passengers[n]
    end

    def <<(psg)
        self.board_passenger(psg)
    end
end