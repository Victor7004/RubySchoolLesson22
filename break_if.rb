# считаем эту цифру
a = gets.chomp.to_i
# делаем цикл
for i in 0..99
 break if i >= a
 puts i
end
