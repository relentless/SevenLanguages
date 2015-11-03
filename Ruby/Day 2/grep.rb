searchString = ARGV[0]
fileName = ARGV[1]

File.open(fileName).each_with_index do |line, index|
    if Regexp::new(searchString).match(line) then 
        puts "#{index}: #{line}" 
    end
end