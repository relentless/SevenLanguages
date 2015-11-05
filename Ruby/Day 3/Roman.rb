class Roman
    def self.method_missing name, *args
        roman = name.to_s
        
        roman.gsub!("IV", "IIII")
        
        (roman.count("I") * 1 +
         roman.count("V") * 5 +
         roman.count("X") * 10)
    end
end

puts Roman.III
puts Roman.X
puts Roman.XIV