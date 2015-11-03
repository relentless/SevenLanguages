current_block = Array.new

('a'..'p').to_a.each.with_index do |item, index| 
    current_block[index%4] = item
    if (index+1) % 4 == 0 then 
        current_block.each {|element| print element}
        puts
        current_block = Array.new
    end
end

puts

('a'..'p').to_a.each_slice(4) do |slice|
    slice.each {|element| print element}
    puts
end