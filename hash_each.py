#решение от автора курса
sum = 0
hash.each {|key, val| sum += val}
puts sum

#однострочник
puts hash.values.sum

#мое решение
sum = 0
hash.each do |key, value|
    sum += value    
end
puts sum
