class Passenger
    attr_reader :name
    def initialize(name)
        @name, @flight_numbers = name, []
    end
    
    def has_flight?(fn)
        @flight_numbers.include?(fn.upcase)
    end
    
    def add_flight(fn)
        @flight_numbers << fn.upcase if !self.has_flight?(fn)
    end
end
