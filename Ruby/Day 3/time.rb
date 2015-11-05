class Numeric
    def to_ms 
        "#{self}ms"
    end
    
    def seconds
        self * 1000
    end
    
    def minutes
        self * 60.seconds
    end
    
    def hours
        self * 60.minutes
    end
    
    def forward
        self
    end
    
    def back
        self * -1
    end
end

puts 24.hours.to_ms

puts 3.seconds.back.to_ms