# Создайте Proc под названием sum, который должен принимать три параметра и выводить их сумму. Только создать proc, больше ничего делать не нужно.
sum = Proc.new do |x, y, z|
    puts (x + y + z)
end

# Верное решение #435514163
sum = proc { |x, y, z| puts x + y + z }
