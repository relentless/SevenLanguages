#puts "Hi mum".friendly? # error

class String
    def friendly?
        self.start_with? "Hi"
    end
end

puts "Hi mum".friendly?