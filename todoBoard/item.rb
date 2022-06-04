class Item
    def self.valid_date?(s)
        date = s.split('-').map(&:to_i)
        y, m, d = date
        if date.length != 3
            return false 
        elsif !(0..12).include?(m)
            return false 
        elsif !(0..31).include?(d)
            return false 
        end; true
    end
    attr_reader :deadline
    attr_accessor :title, :description
    def initialize(title, deadline, description)
        raise "error due to invalid date" if !Item.valid_date?(deadline)
        @item = title
        @deadline = deadline
        @description = description
    end

    def deadline=(ndl)
        raise "error due to invalid date" if !Item.valid_date?(deadline)
        @deadline = ndl
    end
