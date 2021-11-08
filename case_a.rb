a = gets.to_i
case a
when (1..10000)
    puts "1"
when (0..0)
    puts "0"
when (-10000..-1)
        puts "-1"
end
