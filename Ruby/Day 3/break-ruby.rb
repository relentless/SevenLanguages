class Thing
    def print
        puts 'Thing'
    end
end

#x = Thing.new
#x.print

class Class
    def new
        puts 'Good luck with your Ruby, sucka!'
    end
end

class NilClass
    def method_missing name, *args
        puts "You're trying to #{name} a #{self.class}, fool!" 
    end
end

y = Thing.new
y.print
